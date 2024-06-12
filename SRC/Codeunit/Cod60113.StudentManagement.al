codeunit 60113 "Student Management"
{
    procedure CalculateAge(StartDate: Date; EndDate: Date; var AgeString: Text[80]; var Years: Decimal) Age: Decimal
    var
        Dates: Codeunit "Dates Management";
        Months: Decimal;
        YearPos: Integer;
        YearString: Text[30];
        MonthString: Text[30];
        MonthPos: Integer;
        DayString: Text[30];
        DaysPos: Integer;
        Days: Decimal;
        StdMgtSetup: Record "Student Management Setup";
    begin
        StdMgtSetup.Get();
        StdMgtSetup.TestField("No of Days in a Year");

        AgeString := Dates.DetermineAge(StartDate, EndDate);

        YearPos := StrPos(AgeString, ' Years');
        if YearPos = 0 then
            YearPos := StrPos(AgeString, ' Year');
        if YearPos > 1 then begin
            YearString := CopyStr(AgeString, 1, YearPos);
            Evaluate(Years, YearString);
        end;

        MonthPos := StrPos(AgeString, 'Months');
        if MonthPos = 0 then
            MonthPos := StrPos(AgeString, 'Month');
        if MonthPos > 2 then begin
            MonthString := CopyStr(AgeString, (MonthPos - 2), 2);
            Evaluate(Months, MonthString);
        end;
        Months := Months / 12;

        DaysPos := StrPos(AgeString, 'Days');
        if DaysPos = 0 then
            DaysPos := StrPos(AgeString, 'Day');
        if DaysPos > 2 then begin
            DayString := CopyStr(AgeString, DaysPos - 2, 2);
            Evaluate(Days, DayString);
        end;

        Days := Days / StdMgtSetup."No of Days in a Year";
        Age := Years + Months + Days;
    end;
}
