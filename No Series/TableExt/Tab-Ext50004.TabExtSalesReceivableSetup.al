tableextension 50004 "Tab-Ext-Sales-Receivable-Setup" extends "Sales & Receivables Setup"
{
    fields
    {
        field(50000; "Parking No"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
    }
}
