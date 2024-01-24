table 50001 "Parking Lot"
{
    DataClassification = ToBeClassified;
    Caption = 'Parking Lot Table';

    fields
    {
        field(1; "Parking Id"; Code[20])
        {
            DataClassification = ToBeClassified;

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
    }

    keys
    {
        key(Key1; "Parking Id")
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
            setup.Modify();
        end;
    end;



}