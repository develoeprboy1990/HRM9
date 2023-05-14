<?php

namespace App\Http\Controllers;
use Carbon\Carbon;
use Illuminate\Http\Request;


 use Yajra\DataTables\DataTables;
 

use Session;
use DB;
use URL;
use Image;
use Excel;
use File;


class Employee extends Controller
{
     
    public function StaffDashboard()
    {   
        $employee  = DB::table('v_employee')->where('EmployeeID',session::get('EmployeeID'))->get();

        return view ('staff.staff_dashboard',compact('employee'));
    }

    
    public function StaffDocuments()
    {

         $employee = DB::table('v_employee')->where('EmployeeID',session::get('EmployeeID'))->get();
         $documents = DB::table('v_documents')->where('EmployeeID',session::get('EmployeeID'))->get();
       
        return view('staff.staff_document',compact('employee','documents'));

     }

   
    public function StaffSalary()
     {

        $salary = DB::table('salary')->where('EmployeeID',session::get('EmployeeID'))->get();
        $employee = DB::table('v_employee')->where('EmployeeID',session::get('EmployeeID'))->get();
        return view('staff.staff_salary',compact('salary','employee'));

     } 

   
     
     public function StaffComission($EmployeeID,$MonthName)
     {

       $fcb = DB::table('v_fcb')->where('EmployeeID',$EmployeeID)->where('MonthName',$MonthName)->get();
        $employee = DB::table('v_employee')->where('EmployeeID',$EmployeeID)->get();
       $fcbsummary = DB::table('v_fcb')
            ->select('EmployeeID', DB::raw('sum(FTDAmount) as sum'),DB::raw('count(FTDAmount) as tot'))
            ->where('EmployeeID',$EmployeeID)->where('MonthName',$MonthName)
            ->groupBy('EmployeeID')
             ->get();

        return view('staff.staff_comission',compact('fcb','employee'));

     }

     function StaffLetters()
    {


      
      

      $letter = DB::table('letter')->get();
      $issue_letter = DB::table('issue_letter')->where('EmployeeID',session::get('EmployeeID'))->get(); 
      $employee = DB::table('v_employee')->where('EmployeeID',session::get('EmployeeID'))->get();    
       

      return view ('staff.staff_letter',compact('letter','issue_letter','employee'));
    } 



     


    public function StaffLeave()
{   



 
 




    $leave = DB::table('v_leave')->get();
    $employee = DB::table('v_employee')->where('EmployeeID',session::get('EmployeeID'))->get();
    $branch = DB::table('branch')->where('BranchID',session::get('BranchID'))->get();

    $leave_type = DB::table('leave_type')->get();


    session::put('StartDate',$employee[0]->StartDate);


 $to = \Carbon\Carbon::createFromFormat('Y-m-d', date('Y-m-d'));
$from = \Carbon\Carbon::createFromFormat('Y-m-d', $employee[0]->StartDate);

$diff_in_months = $to->diffInMonths($from);
 
session::put('Months',$diff_in_months); 

    


     return view ('staff.staff_leave',compact('leave','employee','branch','leave_type')); 
}


public function ajax_StaffLeave(Request $request)
    {
        if ($request->ajax()) {
            $data = DB::table('v_leave')->where('EmployeeID',session::get('EmployeeID'))->get();
            return Datatables::of($data)
                    ->addIndexColumn()
                    ->addColumn('action', function($row){
 // if you want to use direct link instead of dropdown use this line below
 

                           $btn = ' 

                         
                          <a href="javascript:void(0)" onclick="delete_confirm2(`StaffLeaveDelete`,'.$row->LeaveID.')" class="dropdown-item">  Delete</a> 
                                                              
                                                            ';
     
//class="edit btn btn-primary btn-sm"
     // <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-eye"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="12" r="3"></circle></svg>
                            return $btn;
                    })
                    ->rawColumns(['action'])
                    ->make(true);
        }
      
        return view('staff.staff_leave');
    }




public function ajax_leave_validate($leavetypeid,$employeeid)
{
   


    $month=date('F-Y');

  
    if(session::get('MonthName')>5)
    {
      return 'Leave is not allowed in probition period';
    }





    
    $leave = DB::table('leave_detail')->where('EmployeeID',$employeeid)->where('LeaveTypeID',$leavetypeid)->get();
     

    $v_leave_summary = DB::table('v_leave_summary')->where('EmployeeID',$employeeid)->where('LeaveTypeID',$leavetypeid)->get();

    return view('staff.ajax_leave_validate',compact('v_leave_summary','leave','leavetypeid','employeeid'));

  

}






             
public function StaffLeaveSave(request $request)
{

 

$this->validate($request,[
             'EmployeeID'=>'required',
             'BranchID'=>'required',
            // 'mobile'=>'required|min:11|numeric',
             'FromDate'=>'required | date_format:d/m/Y',
             'ToDate'=>'required | date_format:d/m/Y',         
             'Reason'=>'required',         
             
              
              // 'email'=>'required | email|unique:user',
          ],
        [
          'EmployeeID.required' => 'Employee Name is  required',
          'BranchID.required' => 'Branch is required',
          'FromDate.required' => 'Leave Start Date is required',
          'FromDate.date_format' => 'Leave start date does not match the format d/m/Y.',
          

          'ToDate.required' => 'Leave End Date is required',
          'ToDate.date_format' => 'Leave end date does not match the format d/m/Y.',
          'Reason.required' => 'Reason is required',
          
            
               
        ]);






// return redirect()->back()->with('error', 'You access is limited')->with('class','danger') ->withInput();
 

    

     $employee = DB::table('employee')->where('EmployeeID',$request->EmployeeID)->get();

$startdate = \Carbon\Carbon::createFromFormat('Y-m-d', $employee[0]->StartDate);
$todaydate = \Carbon\Carbon::createFromFormat('Y-m-d', date('Y-m-d'));
$diff_in_months = $todaydate->diffInMonths($startdate);

 

// $month=date('F-Y');

  
        
      
//     if(($diff_in_months<=6) &&($request->LeaveTypeID!=11))  
//     {
//        return redirect('StaffLeave')->with('error','Leave not allowed in probition period')->with('class','danger');
//     }



    // annual leave 1


 








    $data = array(
      'BranchID' => $request->BranchID, 
      'EmployeeID' => $request->EmployeeID, 
      'LeaveTypeID' => $request->LeaveTypeID, 
      'FromDate' => date('Y-m-d', strtotime(str_replace('/', '-', $request->input('FromDate')))), 
      'ToDate' => date('Y-m-d', strtotime(str_replace('/', '-', $request->input('ToDate')))),
      'Reason' => $request->Reason, 
      'FromTime' => ($request->LeaveTypeID==2) ? $request->FromTime : '00:00', 
      'ToTime' => ($request->LeaveTypeID==2) ? $request->ToTime : '00:00'

        );


    $leaveid= DB::table('leave')->insertGetId($data);






 $start_date = dateformatpc($request->FromDate);
 $start_date = date ("Y-m-d", strtotime("-1 days", strtotime($start_date)));


    $end_date = dateformatpc($request->ToDate);

    while (strtotime($start_date) < strtotime($end_date)) {




        echo $start_date."<BR>";
        $start_date = date ("Y-m-d", strtotime("+1 days", strtotime($start_date)));



    $leave_detail = array(
                  
                    'LeaveID' => $leaveid, 
                    'EmployeeID' => $request->EmployeeID, 
                    'LeaveTypeID' => $request->LeaveTypeID, 
                    'Date' => $start_date, 
                    
                    'FromTime' => ($request->LeaveTypeID==2) ? $request->FromTime : '00:00', 
                    'ToTime' => ($request->LeaveTypeID==2) ? $request->ToTime : '00:00', 
                    'PaymentStatus' => $request->PaymentStatus, 

                  );



$id= DB::table('leave_detail')->insertGetId($leave_detail);


    }



    
    
    


    if($diff_in_months<5)
{
    return redirect('StaffLeave')->with('error','Leave Saved but you are not entitled to apply for Leave')->with('class','danger');
}
 
 else
 {
    return redirect('StaffLeave')->with('error','Leave Saved Successfully')->with('class','success');
 }




    
    
    
    
    
}        
   

   public function StaffLeaveDelete($id)
        {   
            
            
            $id = DB::table('leave')->where('LeaveID',$id)->where('OMStatus','Pending')->delete();

            
             DB::table('leave_detail')->where('LeaveID',$id)->delete();
            
            
            if( $id)
            {
                return redirect('/StaffLeave')->with('error','Deleted Successfully')->with('class','success');
            }
            else
            {
               return redirect('/StaffLeave')->with('error','Error Deleting Leave Application')->with('class','danger');
            }

 
            
            
        }    


    function StaffAttendance()
    {


      $attendance = DB::table('t2')->where('EmployeeID',session::get('EmployeeID'))->get();   
      $employee = DB::table('v_employee')->where('EmployeeID',session::get('EmployeeID'))->get();    


      return view ('staff.staff_attendance',compact('attendance','employee'));
    }   


    function StaffFCB()
    {


      $fcb = DB::table('v_fcb')->where('EmployeeID',Session::get('EmployeeID'))->get();
      $employee = DB::table('v_employee')->where('EmployeeID',session::get('EmployeeID'))->get();    


      return view ('staff.staff_fcb',compact('fcb','employee'));
    }     

   
      public function StaffTeam()
     {

        $employee = DB::table('v_employee')->where('EmployeeID',session::get('EmployeeID'))->get();

         $team = DB::table('v_employee')->where('SupervisorID',session::get('EmployeeID'))->get();
  

        return view('staff.staff_team',compact('employee','team'));

     }



      public function StaffDailyReport()
     {

        $employee = DB::table('v_employee')->where('EmployeeID',session::get('EmployeeID'))->get();

         $daily_report = DB::table('daily_report')->where('EmployeeID',session::get('EmployeeID'))->get();

         $new_daily_report = DB::table('v_daily_report')->where('SupervisorID',session::get('EmployeeID'))->get();
  

        return view('staff.staff_dailyreport',compact('employee','daily_report','new_daily_report'));

     }



      public function DailyReportSave( request $request)
     {




         if ($request->file('File')!=null)
                        {
                  
                     $this->validate($request, [
        
                           // 'file' => 'required|mimes:jpeg,png,jpg,gif,svg,xlsx,pdf|max:1000',
                             'File' => 'required|mimes:jpeg,png,jpg,gif,xlsx,pdf,doc,docx,rtf,ppt|max:40000',
        
                        ] );
        
                     $file = $request->file('File');
                     $input['filename'] = time().'.'.$file->extension();
                     
                     
        
        
        
                     $destinationPath = public_path('/reports');
        
                     $file->move($destinationPath, $input['filename']);
                   
                        // $destinationPath = public_path('/images');
                        // $image->move($destinationPath, $input['imagename']);
        
                       // $input['filename']===========is final data in it.
                      
        
                               
                    $data = array(

                    'EmployeeID' => $request->EmployeeID,
                    'Title' => $request->Title,
                    'Detail' => $request->Detail,
                    'Date' => dateformatpc($request->Date),
                     'File'=> $input['filename'],

                   );
        
                      
        
                    }
                    
                        else
                    {
                         
                                 
                    $data = array(

                      'EmployeeID' => $request->EmployeeID,
                      'Title' => $request->Title,
                      'Detail' => $request->Detail,
                      'Date' => dateformatpc($request->Date)

                     );
                    
        
                    }
        



                    $id= DB::table('daily_report')->insertGetId($data);
                    
                    

        
        return redirect('StaffDailyReport')->with('error','Save Successfully')->with('class','success');
        ('staff.staff_dailyreport');

     }


   public function StaffDailyReportEdit($id)
     {

        $employee = DB::table('v_employee')->where('EmployeeID',session::get('EmployeeID'))->get();

         $daily_report = DB::table('daily_report')->where('DailyReportID',$id)->get();

        
  

        return view('staff.staff_dailyreport_edit',compact('employee','daily_report'));

     }



 public function DailyReportUpdate( request $request)
     {




         $data = array(

                      
                      'Title' => $request->Title,
                      'Detail' => $request->Detail,
                      'SupervisorComments' => $request->SupervisorComments,
                      

                     );
      
                
        $id= DB::table('daily_report')->where('DailyReportID' , '=' , $request->DailyReportID)->update($data);
                
                    
                    

        
        return redirect('StaffDailyReport')->with('error','Updated Successfully')->with('class','success');
        ('staff.staff_dailyreport');
  
                                 
                   
     }


   public function StaffDailyReportDelete($id)
        {   
            
            
            $id = DB::table('daily_report')->where('DailyReportID',$id)->delete();
            
            return redirect('/StaffDailyReport')->with('error','Deleted Successfully')->with('class','success');
                      
            
        } 


    public function StaffLead()
     {     $pagetitle='Staff Lead';
         $employee = DB::table('v_employee')->get();

         $lead = DB::table('lead')->get();

         return view('staff.staff_lead',compact('pagetitle','employee','lead'));

          
     }

public function StaffLeadSave(request $request)
{


  $data = array(

    'Name' => $request->Name, 
    'EmployeeID' => session::get('EmployeeID'), 
    'Phone' => $request->Phone, 
    'Email' => $request->Email, 
    'CompanyName' => $request->CompanyName, 
    'LeadStage' => $request->LeadStage, 
    'BusinessType' => $request->BusinessType, 
    'LeadStage' => $request->LeadStage, 
    'Date' => dateformatpc($request->Date), 

              );



$id= DB::table('lead')->insertGetId($data);


return redirect('StaffLead')->with('error','Save Successfully')->with('class','success');


 
}

public function StaffLeadDelete ($id)
{

  
  $id = DB::table('lead')->where('LeadID',$id)->delete();
  
  return redirect('StaffLead')->with('error','Deleted Successfully')->with('class','success');
  
  
}
  public function StaffDeal()
     {     $pagetitle='Staff Lead';
         $employee = DB::table('v_employee')->get();

         $deal = DB::table('deal')->get();

         return view('staff.staff_deal',compact('pagetitle','employee','deal'));

          
     }

public function StaffDealSave(request $request)
{


  $data = array(

    'EmployeeID' => session::get('EmployeeID'), 
    'Name' => $request->Name, 
    'CompanyName' => $request->CompanyName, 
    'Phone' => $request->Phone, 
    'ExpectedCloserDate' => dateformatpc($request->ExpectedCloserDate), 
    'DealValue' => $request->DealValue, 
    'DealStatus' => $request->DealStatus, 
    'Notes' => $request->Notes, 
    
    'Date' => dateformatpc($request->Date), 

              );



$id= DB::table('deal')->insertGetId($data);


return redirect('StaffDeal')->with('error','Save Successfully')->with('class','success');


}


public function StaffDealDelete ($id)
{

  $id = DB::table('deal')->where('DealID',$id)->delete();
  
  return redirect('StaffDeal')->with('error','Deleted Successfully')->with('class','success');
    
}



  public function StaffTarget()
     {     $pagetitle='Staff Lead';
         $employee = DB::table('v_employee')->get();

         $target = DB::table('v_target')->get();

         return view('staff.staff_target',compact('pagetitle','employee','target'));

          
     }


 public function StaffTargetReply($id)
     {     $pagetitle='Staff Lead';
         $employee = DB::table('v_employee')->get();

         $target = DB::table('v_target')->where('TargetID',$id)->get();

         return view('staff.staff_target_reply',compact('pagetitle','employee','target'));

          
     }

public function StaffTargetReplySave(request $request)
{


  $data = array(

    'TargetID' => $request->TargetID, 
     'EmployeeID' => session::get('EmployeeID'), 
    
    'Detail' => $request->Detail, 
    
    'Date' => dateformatpc($request->Date), 
    

              );



$id= DB::table('target_reply')->insertGetId($data);


return redirect('StaffTarget')->with('error','Save Successfully')->with('class','success');


}


public function StaffTargetReplyDelete ($id)
{

  $id = DB::table('target_reply')->where('TargetReplyID',$id)->delete();
  
  return redirect('StaffTarget')->with('error','Deleted Successfully')->with('class','success');
    
}


 

public function StaffNoticeBoard()
     {


      $pagetitle='Daily Report';

      $notice = DB::table('notice_board')->where('Status','Publish')->orderby('Date','desc')->get();

      return view ('staff.staff_notice_board',compact('pagetitle','notice'));
      


     }


public function NoticeBoardView($id)
     {


      $pagetitle='Daily Report';

      $notice = DB::table('notice_board')->where('Status','Publish')->where('NoticeBoardID',$id)->get();

      return view ('staff.notice_board_view',compact('pagetitle','notice'));
      


     }





        ///////////////////////
}
