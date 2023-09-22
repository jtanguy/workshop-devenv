import { SfeirThemeInitializer } from "../node_modules/sfeir-school-theme/sfeir-school-theme.mjs";

/*
 * Les préfixes ../markdown sont là pour profiter du raccourci vim `gf`
 * pour créer facilement les fichiers markdown à partir de cette liste
 */
function introSlides() {
  return [
    "../markdown/intro/00-TITLE.md",
    "../markdown/intro/01-plan.md",
    "../markdown/intro/02-setup.md",
    "../markdown/intro/10-nix.md",
    "../markdown/hello-world/01-hello-world.md",
  ];
}

function formation() {
  return [...introSlides()].map((slidePath) => {
    return { path: slidePath.replace(/\.\.\/markdown\//, "") };
  });
}

SfeirThemeInitializer.init(formation);
