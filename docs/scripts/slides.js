import { SfeirThemeInitializer } from "../node_modules/sfeir-school-theme/sfeir-school-theme.mjs";

/*
 * Les préfixes ../markdown sont là pour profiter du raccourci vim `gf`
 * pour créer facilement les fichiers markdown à partir de cette liste
 */
function introSlides() {
  return [
    "../markdown/00-TITLE.md",
    "../markdown/01-plan.md",
    "../markdown/02-setup.md",
    "../markdown/03-contexte.md",
    "../markdown/04-pourquoi-devenv.md",
    "../markdown/05-nix.md",
    "../markdown/10-hello-world.md",
    "../markdown/20-devenv.md",
    "../markdown/30-hello-python.md",
    "../markdown/40-processes-services.md",
    "../markdown/50-hello-real-world.md",
  ];
}

function formation() {
  return [...introSlides()].map((slidePath) => {
    return { path: slidePath.replace(/\.\.\/markdown\//, "") };
  });
}

SfeirThemeInitializer.init(formation);
