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
            MinValue = 20;
            MaxValue = 80;
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
            ValidateTableRelation = true;
        }

        field(7; Email; Text[30])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = EMail;    //it will create a URL like type data which will provide another color on hover 
            //there are other several option like masked, phone number and many more
        }

        field(8; No; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
            Editable = false;
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