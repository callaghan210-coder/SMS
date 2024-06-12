codeunit 60112 "Student Approval Workflow"
{
    Subtype = Normal;

    trigger OnRun()
    var
        StdAppRec: Record "Student Application";
        CustomerRec: Record Customer;
    begin

        StdAppRec.Get();
        CustomerRec."No." := StdAppRec."No.";
        CustomerRec.Name := StdAppRec."Full Name";
        CustomerRec.Insert;
    end;
}
