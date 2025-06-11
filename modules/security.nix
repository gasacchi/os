{
    security =
    {
        sudo.enable = false;
        doas.enable = true;
        doas.extraRules =
        [
            {
                users = ["gasacchi"];
                persist = true;
            }
        ];
    };
}
