$Public = $ENV:Pub;
$Private = $ENV:Priv;

$h = Resolve-Path ~;

if ( -not (Test-Path "$h/.ssh")) {
    mkdir "$h/.ssh";
}
Write-Output $Public > "$h/.ssh/id_rsa.pub";
Write-Output $Private > "$h/.ssh/id_rsa";

write-output $Public[1..20];
Write-Output $Private[1..20];

git.exe config --global user.name "github_actions_units_core";
git config --global user.email "rickobranimir@gmail.com";