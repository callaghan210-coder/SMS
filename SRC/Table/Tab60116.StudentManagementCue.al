table 60116 "Student Management Cue"
{
    Caption = 'Student Management Cue';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Code[20])
        {
            Caption = 'Primary Key';
        }
        field(2; "Student Applicant"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Student Application");
            Caption = 'Student Applicant';
        }
        field(3; Units; Integer)
        {
            Caption = 'Units';
            FieldClass = FlowField;
            CalcFormula = count("Unit Setup");
        }
        field(4; Courses; Integer)
        {
            Caption = 'Courses';
            FieldClass = FlowField;
            CalcFormula = count(Course);
        }
        field(5; "Academic Year"; Integer)
        {
            Caption = 'Academic Year';
            FieldClass = FlowField;
            CalcFormula = count("Academic Year");
        }
        field(6; Semester; Integer)
        {
            Caption = 'Semester';
            FieldClass = FlowField;
            CalcFormula = count("Semester");
        }
        field(7; "User ID Filter"; Code[20])
        {
            FieldClass = FlowFilter;
            Caption = 'User ID Filter';
            TableRelation = user;



        }
    }
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}
