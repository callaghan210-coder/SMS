page 60111 "Student Profile"
{
    Caption = 'Student Profile';
    PageType = Card;
    SourceTable = "Student Application";

    layout
    {
        area(Content)
        {
            group("Bio Data")
            {
                Caption = 'Bio Data';

                field("No."; Rec."Student No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the NO. field.', Comment = '%';
                }

                field("Full Name"; Rec."Full Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Full Name field.', Comment = '%';
                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the First Name field.', Comment = '%';
                }
                field("Middle Name"; Rec."Middle Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Middle Name field.', Comment = '%';
                }
                field(Surname; Rec.Surname)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Surname field.', Comment = '%';
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gender field.', Comment = '%';
                }
                field("National ID"; Rec."National ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gender field.', Comment = '%';
                }
                field("Birth Certificate No."; Rec."Birth Certificate No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gender field.', Comment = '%';
                }
                field(Age; Rec.Age)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Age field.', Comment = '%';
                }
            }
            group(Contact)
            {
                Caption = 'Contact Details';
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Email field.', Comment = '%';
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Phone No. field.', Comment = '%';
                }
            }

            group(Academic)
            {
                Caption = 'Academic details';

                field("Course Code"; Rec."Course Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Course field.', Comment = '%';
                }
                field("Course Title"; Rec."Course Title")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Course field.', Comment = '%';
                }

            }
            group("Next Of Kin")
            {
                Caption='Next of Kin';
            }

        }
    }
}