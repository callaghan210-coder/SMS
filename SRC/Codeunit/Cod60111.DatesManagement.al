codeunit 60111 "Dates Management"
{
    trigger OnRun()
    begin

    end;

    procedure DetermineAge(DateOfBirth: Date; DateOfJoin: Date) AgeString: Text[45]
    var
        dayB: Integer;
        monthB: Integer;
        yearB: Integer;
        dayJ: Integer;
        monthJ: Integer;
        yearJ: Integer;
        Year: Integer;
        Month: Integer;
        Day: Integer;
        monthsToBirth: Integer;
        D: Date;
        DateCat: Integer;
        EndMonth: Boolean;
        Text001: Label 'The wrong date category for Date of Birth: %1 and Date of Join: %2!';
        Text002: Label 'The Date of Birth: %1 cannot be greater than Date of Join: %2!';
    begin
        if ((DateOfBirth <> 0D) and (DateOfJoin <> 0D)) then begin
            if DateOfBirth > DateOfJoin then
                Error(Text002, Format(DateOfBirth), Format(DateOfJoin));
            dayB := Date2DMY(DateOfBirth, 1);
            monthB := Date2DMY(DateOfBirth, 2);
            yearB := Date2DMY(DateOfBirth, 3);
            dayJ := Date2DMY(DateOfJoin, 1);
            monthJ := Date2DMY(DateOfJoin, 2);
            yearJ := Date2DMY(DateOfJoin, 3);
            Day := 0;
            Month := 0;
            Year := 0;
            DateCat := DateCategory(dayB, dayJ, monthB, monthJ, yearB, yearJ);

            case (DateCat) of
                1:
                    begin
                        Year := yearJ - yearB;
                        if monthJ >= monthB then begin
                            EndMonth := DetermineEndMonth(DateOfJoin);
                            if EndMonth then begin
                                if (monthJ - monthB) = 11 then begin
                                    Month := 0;
                                    Year := Year + 1;
                                end else
                                    Month := monthJ - monthB;
                            end else
                                Month := monthJ - monthB;

                        end else begin
                            //Check if End date is End of month
                            EndMonth := DetermineEndMonth(DateOfJoin);
                            if EndMonth then begin
                                if ((monthJ + 12) - monthB) = 11 then begin
                                    Month := 0;

                                end else begin
                                    Month := (monthJ + 12) - monthB;
                                    Year := Year - 1;
                                end;
                            end else begin
                                Month := (monthJ + 12) - monthB;
                                Year := Year - 1;
                            end;
                        end;

                        if (dayJ >= dayB) then
                            Day := dayJ - dayB
                        else
                            if (dayJ < dayB) then begin
                                Day := (DetermineDaysInMonth(monthJ, yearJ) + dayJ) - dayB;
                                Month := Month - 1;
                            end;
                        if EndMonth and (Month = 0) then begin
                            AgeString := '%1 Years';
                            AgeString := StrSubstNo(AgeString, Year);
                        end else begin
                            case true of
                                (Year = 1) and (Month = 1) and (Day = 1):
                                    AgeString := '%1 Year, %2 Month and %3 Day';
                                (Year = 1) and (Month <> 1) and (Day = 1):
                                    AgeString := '%1 Year, %2 Months and %3 Day';
                                (Year <> 1) and (Month = 1) and (Day = 1):
                                    AgeString := '%1 Years, %2 Month and %3 Day';
                                (Year <> 1) and (Month <> 1) and (Day = 1):
                                    AgeString := '%1 Years, %2 Months and %3 Day';
                                (Year = 1) and (Month = 1) and (Day <> 1):
                                    AgeString := '%1 Year, %2 Month and %3 Days';
                                (Year = 1) and (Month <> 1) and (Day <> 1):
                                    AgeString := '%1 Year, %2 Months and %3 Days';
                                (Year <> 1) and (Month = 1) and (Day <> 1):
                                    AgeString := '%1 Years, %2 Month and %3 Days';
                                (Year <> 1) and (Month <> 1) and (Day <> 1):
                                    AgeString := '%1 Years, %2 Months and %3 Days';
                                else
                                    AgeString := '%1 Years, %2 Months and %3 Days';
                            end;
                            AgeString := StrSubstNo(AgeString, Year, Month, Day);
                        end;
                    end;
                2, 3, 7:
                    begin
                        if (monthJ <> monthB) then begin
                            if monthJ >= monthB then
                                Month := monthJ - monthB
                            else
                                Error(Text001, Format(DateOfBirth), Format(DateOfJoin));
                        end;

                        if (dayJ <> dayB) then begin
                            if (dayJ >= dayB) then
                                Day := dayJ - dayB
                            else
                                if (dayJ < dayB) then begin
                                    Day := (DetermineDaysInMonth(monthJ, yearJ) + dayJ) - dayB;
                                    Month := Month - 1;
                                end;
                        end;
                        case true of
                            (Month = 1) and (Day = 1):
                                AgeString := '%1 Month %2 Day';
                            (Month <> 1) and (Day = 1):
                                AgeString := '%1 Months %2 Day';
                            (Month = 1) and (Day <> 1):
                                AgeString := '%1 Month %2 Days';
                            (Month <> 1) and (Day <> 1):
                                AgeString := '%1 Months %2 Days';
                            else
                                AgeString := '%1 Months %2 Days';
                        end;
                        AgeString := StrSubstNo(AgeString, Month, Day);
                    end;
                4:
                    begin
                        Year := yearJ - yearB;

                        if Year = 1 then
                            AgeString := '%1 Year'
                        else
                            AgeString := '%1 Years';

                        AgeString := StrSubstNo(AgeString, Year);
                    end;
                5:
                    begin
                        if (dayJ >= dayB) then
                            Day := dayJ - dayB
                        else
                            if (dayJ < dayB) then begin
                                Day := (DetermineDaysInMonth(monthJ, yearJ) + dayJ) - dayB;
                                monthJ := monthJ - 1;
                                Month := (monthJ + 12) - monthB;
                                yearJ := yearJ - 1;
                            end;

                        Year := yearJ - yearB;

                        case true of
                            (Year = 1) and (Month = 1) and (Day = 1):
                                AgeString := '%1 Year, %2 Month and %3 Day';
                            (Year = 1) and (Month <> 1) and (Day = 1):
                                AgeString := '%1 Year, %2 Months and %3 Day';
                            (Year <> 1) and (Month = 1) and (Day = 1):
                                AgeString := '%1 Years, %2 Month and %3 Day';
                            (Year <> 1) and (Month <> 1) and (Day = 1):
                                AgeString := '%1 Years, %2 Months and %3 Day';
                            (Year = 1) and (Month = 1) and (Day <> 1):
                                AgeString := '%1 Year, %2 Month and %3 Days';
                            (Year = 1) and (Month <> 1) and (Day <> 1):
                                AgeString := '%1 Year, %2 Months and %3 Days';
                            (Year <> 1) and (Month = 1) and (Day <> 1):
                                AgeString := '%1 Years, %2 Month and %3 Days';
                            (Year <> 1) and (Month <> 1) and (Day <> 1):
                                AgeString := '%1 Years, %2 Months and %3 Days';
                            else
                                AgeString := '%1 Years, %2 Months and %3 Days';
                        end;
                        AgeString := StrSubstNo(AgeString, Year, Month, Day);
                    end;
                6:
                    begin
                        if monthJ >= monthB then
                            Month := monthJ - monthB
                        else begin
                            Month := (monthJ + 12) - monthB;
                            yearJ := yearJ - 1;
                        end;
                        Year := yearJ - yearB;
                        case true of
                            (Year = 1) and (Month = 1):
                                AgeString := '%1 Year and %2 Month';
                            (Year = 1) and (Month <> 1):
                                AgeString := '%1 Year and %2 Months';
                            (Year <> 1) and (Month = 1):
                                AgeString := '%1 Years and %2 Month';
                            (Year <> 1) and (Month <> 1):
                                AgeString := '%1 Years and %2 Months';
                            else
                                AgeString := '%1 Years and %2 Months';
                        end;

                        AgeString := StrSubstNo(AgeString, Year, Month);
                    end;
                else
                    AgeString := '';
            end;
        end;
        exit;
    end;

    procedure DateCategory(BDay: Integer; EDay: Integer; BMonth: Integer; EMonth: Integer; BYear: Integer; EYear: Integer) Category: Integer
    begin
        if ((EYear > BYear) and (EMonth <> BMonth) and (EDay <> BDay)) then
            Category := 1
        else
            if ((EYear = BYear) and (EMonth <> BMonth) and (EDay = BDay)) then
                Category := 2
            else
                if ((EYear = BYear) and (EMonth = BMonth) and (EDay <> BDay)) then
                    Category := 3
                else
                    if ((EYear > BYear) and (EMonth = BMonth) and (EDay = BDay)) then
                        Category := 4
                    else
                        if ((EYear > BYear) and (EMonth = BMonth) and (EDay <> BDay)) then
                            Category := 5
                        else
                            if ((EYear > BYear) and (EMonth <> BMonth) and (EDay = BDay)) then
                                Category := 6
                            else
                                if ((EYear = BYear) and (EMonth <> BMonth) and (EDay <> BDay)) then
                                    Category := 7
                                else
                                    if ((EYear = BYear) and (EMonth = BMonth) and (EDay = BDay)) then
                                        Category := 3
                                    else begin
                                        Category := 0;
                                        //ERROR('The start date cannot be after the end date.');
                                    end;
        exit;
    end;

    procedure DetermineDaysInMonth(Month: Integer; Year: Integer) DaysInMonth: Integer
    begin
        case (Month) of
            1:
                DaysInMonth := 31;
            2:
                begin
                    if (LeapYear(Year)) then
                        DaysInMonth := 29
                    else
                        DaysInMonth := 28;
                end;
            3:
                DaysInMonth := 31;
            4:
                DaysInMonth := 30;
            5:
                DaysInMonth := 31;
            6:
                DaysInMonth := 30;
            7:
                DaysInMonth := 31;
            8:
                DaysInMonth := 31;
            9:
                DaysInMonth := 30;
            10:
                DaysInMonth := 31;
            11:
                DaysInMonth := 30;
            12:
                DaysInMonth := 31;
            else
                Message('Not valid date. The month must be between 1 and 12');
        end;

        exit;
    end;

    local procedure DetermineEndMonth(CDate: Date): Boolean
    begin
        if Date2DMY(CalcDate('1D', CDate), 2) <> Date2DMY(CDate, 2) then
            exit(true)
        else
            exit(false);
    end;

    procedure LeapYear(Year: Integer) LY: Boolean
    var
        CenturyYear: Boolean;
        DivByFour: Boolean;
    begin
        CenturyYear := Year mod 100 = 0;
        DivByFour := Year mod 4 = 0;
        if ((not CenturyYear and DivByFour) or (Year mod 400 = 0)) then
            LY := true
        else
            LY := false;
    end;
}
