{
  description = "Seal Ceada — handyman services website (Astro + Cloudflare Workers)";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        devShells.default = pkgs.mkShell {
          name = "seal-dev";

          buildInputs = with pkgs; [
            nodejs_22
            nodePackages.npm
            nodePackages.wrangler
            imagemagick   # nano-banana-transparency icon processing
          ];

          shellHook = ''
            echo ""
            echo "  ╭─────── SC ───────╮"
            echo "  │   SEAL CEADA     │"
            echo "  ╰──────────────────╯"
            echo ""
            echo "  Dev commands:"
            echo "    npm run dev      — Start Astro dev server"
            echo "    npx wrangler dev — Preview as Cloudflare Worker"
            echo "    npx wrangler deploy — Deploy to Cloudflare"
            echo ""
          '';
        };
      }
    );
}
