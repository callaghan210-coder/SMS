table 60122 "Student Exam"
{
    Caption = 'Student Exam';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "ExamID"; Code[20])
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

        field(5; "UnitCode"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Unit Setup"."Unit Code";
        }
        field(6; "ExamDate"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(7; "ExamResult"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(8; "SupplementaryRequired"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "ExamID")
        {
            Clustered = true;
        }
    }

}

