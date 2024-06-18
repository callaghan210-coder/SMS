page 60113 "Course Card"
{
    Caption = 'Course Card';
    PageType = Card;
    SourceTable = "Course Table";
    ApplicationArea = All;
    UsageCategory = ReportsAndAnalysis;
    CardPageId = "Course Card";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Code"; Rec."Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Course ID field.', Comment = '%';
                }
                field("Name"; Rec."Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Course Name field.', Comment = '%';
                }
                field("Duration (Years)"; Rec."Duration (Years)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Course Duration field.', Comment = '%';
                }
            }
        }
    }
}
