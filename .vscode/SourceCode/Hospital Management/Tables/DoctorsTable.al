table 50555 "Doctor Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "S.N"; Code[20])
        {
            DataClassification = ToBeClassified;

        }

        field(2; Name; Code[20])
        {
            DataClassification = ToBeClassified;
        }

        field(3; Age; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(4; Specialty; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(5; "Experience in years"; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(6; Symbol; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(Pk; "S.N")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        noSerin: Record "Sales & Receivables Setup";
        mang: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        if "S.N" = '' then begin
            noSerin.Get();
            mang.InitSeries(noSerin."Customer Nos.", noSerin."Customer Nos.", 0D, "S.N", Symbol);
        end;

    end;


}