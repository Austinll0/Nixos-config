{inputs, config, pkgs, ...}:

{ 
	programs.git = {
		enable = true;
		userName = "Austinll0";
		userEmail = "Austinllafever@ymail.com";
                extraConfig = {
                    init.defaultBranch = "main";
                };
	};
}
