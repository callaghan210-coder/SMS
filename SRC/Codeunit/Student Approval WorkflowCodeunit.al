codeunit 60112 "Student Approval Workflow"
{
    Subtype = Normal;

    trigger OnRun()
    var
        StudentApplicationRec: Record "StudentApplicationTable.al";
        CustomerRec: Record Customer;
    begin
        
        StudentApplicationRec.Get();

    
        CustomerRec."No." := StudentApplicationRec."No.";
        CustomerRec.Name := StudentApplicationRec."Full Name";
        CustomerRec.Insert;
    end;
}
