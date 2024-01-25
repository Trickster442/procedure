table 50001 "Parking Lot"
{
    DataClassification = ToBeClassified;
    Caption = 'Parking Lot Table';

    fields
    {
        field(1; "Parking Id"; Code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;

        }
        field(2; "Car Name"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Park"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(4; "Invoice"; Code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Parking Id", "Invoice")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        setup: Record "Sales & Receivables Setup";
        noSerMng: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        if "Parking Id" = '' then begin
            setup.Get();
            noSerMng.InitSeries(setup."Parking No", setup."Parking No", 0D, "Parking Id", "Park");
            noSerMng.InitSeries(setup."Invoice Nos.", setup."Invoice Nos.", 0D, "Invoice", "Park");
            setup.Modify();
        end;
    end;



}