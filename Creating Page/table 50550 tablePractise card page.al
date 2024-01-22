page 50149 tablePractise_ko_card_page
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = practiseTable;



    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Number1; Rec.Number1)
                {
                    ApplicationArea = All;

                }
                field(Number2; Rec.Number2)
                {
                    ApplicationArea = All;
                }
                field(Result_Add; Rec.Result_Add)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Result_Sub; Rec.Result_Sub)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Result_Mul; Rec.Result_Mul)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Result_Div; Rec.Result_Div)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(onRun_sum)
            {
                ApplicationArea = All;
                RunObject = codeunit Code_unit;
                trigger OnAction()
                var
                    sum: Codeunit Code_unit;
                begin
                    sum.Run();
                end;
            }
            group("By value")
            {
                action(subBy_Value)
                {
                    ApplicationArea = All;
                    trigger OnAction()
                    var
                        sub: Codeunit Code_unit;
                    begin
                        rec.Result_Sub := sub.subByValue(Rec.Number1, Rec.Number2);
                        rec.Modify();
                    end;
                }

                action(multiplyBy_Value)
                {
                    ApplicationArea = All;
                    trigger OnAction()
                    var
                        sub: Codeunit Code_unit;
                    begin
                        rec.Result_Sub := sub.multiplyBy_Value(Rec.Number1, Rec.Number2);
                        rec.Modify();
                    end;
                }
                action(divisionBy_Value)
                {
                    ApplicationArea = All;
                    trigger OnAction()
                    var
                        sub: Codeunit Code_unit;
                    begin
                        rec.Result_Sub := sub.divisionBy_Value(Rec.Number1, Rec.Number2);
                        rec.Modify();
                    end;
                }


            }
            group(no_return)
            {
                action(div_no_return)
                {
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        codeuni: Codeunit Code_unit;
                    begin

                        codeuni.div_with_no_return();
                    end;
                }

                action(sub_no_return)
                {
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        codeuni: Codeunit Code_unit;
                    begin
                        codeuni.sub_no_return();

                    end;
                }
                action(multiply_no_return)
                {
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        myInt: Integer;
                    begin

                    end;
                }
            }
            group(With_reference)
            {
                action(multiply_with_ref)
                {
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        codeblock: Codeunit Code_unit;
                    begin
                        codeblock.mul_with_ref(Rec.Number1, Rec.Number2, Rec.Result_Mul);
                        rec.Modify();

                    end;
                }
                action(sub_with_ref)
                {
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        codeblock: Codeunit Code_unit;
                    begin
                        codeblock.sub_with_ref(rec.Number1, Rec.Number2, Rec.Result_Sub);
                        Rec.Modify();
                    end;
                }
                action(div_with_ref)
                {
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        codeblock: Codeunit Code_unit;
                    begin
                        codeblock.div_with_ref(Rec.Number1, Rec.Number2, rec.Result_Div);
                        Rec.Modify();


                    end;
                }
            }

        }
    }

    var
        myInt: Integer;
}