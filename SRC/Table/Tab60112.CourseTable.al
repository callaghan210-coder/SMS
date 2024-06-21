table 60112 "Course"
{
    Caption = 'Course';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Course ID"; Code[20])
        {
            Caption = 'Course ID';
        }
        field(2; "Course Title"; Text[50])
        {
            Caption = 'Course Title';
        }
        field(3; "Course Duration"; integer)
        {
            Caption = 'Course Duration (Years)';
        }
    }
    keys
    {
        key(PK; "Course ID")
        {
            Clustered = true;
        }
    }
}
