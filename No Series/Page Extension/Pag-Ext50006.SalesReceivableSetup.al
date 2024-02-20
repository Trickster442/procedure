pageextension 50006 "Sales&ReceivableSetup" extends "Sales & Receivables Setup"
{
    layout
    {
        addafter("Customer Nos.")
        {
            field(PAR; Rec."Parking No")
            {
                ApplicationArea = All;
            }

            field(Pat; Rec."Patient Code")
            {
                ApplicationArea = All;
            }
        }
    }
}
