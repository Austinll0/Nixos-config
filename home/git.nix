{inputs, config, pkgs, ...}:

{ 
	programs.git = {
		enable = true;
                settings = {
                    user = {
                        email = "Austinllafever@ymail.com";
                        name = "Austinll0";
                    };
                    init.defaultBranch = "main";
                };
	};
}
