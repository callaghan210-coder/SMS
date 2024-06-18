table 60112 "Course Table"
{
    Caption = 'Course';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Course ID';
        }
        field(2; "Name"; Text[50])
        {
            Caption = 'Course Name';
        }
        field(3; "Duration (Years)"; integer)
        {
            Caption = 'Course Duration';
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
}
