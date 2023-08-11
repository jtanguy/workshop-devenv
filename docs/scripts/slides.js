import { SfeirThemeInitializer } from '../node_modules/sfeir-school-theme/sfeir-school-theme.mjs';

function introSlides() {
  return ['intro/00-TITLE.md'];
}

function formation() {
  return [
    ...introSlides(),
  ].map((slidePath) => {
    return { path: slidePath };
  });
}

SfeirThemeInitializer.init(formation);
