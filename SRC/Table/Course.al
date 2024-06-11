table 60113 "Course"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Code"; Code[10])
        {
            DataClassification = ToBeClassified;
        }

        field(2; "Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(3; "Duration (Years)"; Integer)
        {
            DataClassification = ToBeClassified;
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
