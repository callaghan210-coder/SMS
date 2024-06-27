table 60120 "Student Billing"
{
    Caption = 'Student Billing';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "BillingID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "StudentNo."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Student Application"."Student No.";
        }
        field(3; "CourseCode"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Course"."Course ID";
        }
        field(4; "Semester"; Option)
        {
            OptionMembers = Semester1,Semester2;
        }

        field(5; "TuitionFee"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(6; "LibraryFee"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(7; "ActivityFee"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(8; "TotalAmount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "BillingID")
        {
            Clustered = true;
        }
    }
    local procedure UpdateTotalAmount()
    begin
        "TotalAmount" := "TuitionFee" + "LibraryFee" + "ActivityFee";
    end;
}


