/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if inicializar == true{
var _guil = display_get_gui_width();
var _guia = display_get_gui_height();

var _xx = 0;
var _yy = _guia - 120;
var _c = c_black;
var _sprite = texto_grid[# Infos.Retrato, pagina];
draw_set_font(fnt_dialogo);

var _texto = string_copy(texto_grid[# Infos.Texto, pagina],0, l);

if texto_grid[# Infos.Lado, pagina] == 0
{
//Lado esquerdo
draw_rectangle_color(_xx, _yy, _guil, _guia, _c, _c, _c, _c, false);
//draw_text(_xx+16, _yy-32, texto_grid[# Infos.Nome, pagina]);

//esse 32 é a folga
draw_text_ext(_xx + 180, _yy +32, _texto, 32, _guil - 180);

draw_sprite_ext(_sprite, 0, 100, _guia-60, 0.7, 0.7, 0, c_white, 1);
}

//Lado Direito
else {
draw_rectangle_color(_xx, _yy, _guil, _guia, _c, _c, _c, _c, false);
//264 É ONDE COMEÇA OU TERMINA A FOLGA
//esse 32 é a folga
draw_text_ext(_xx + 32, _yy +32, _texto, 32, _guil - 180);

draw_sprite_ext(_sprite, 0, _guil - 100, _guia-60, -0.7, -0.7, 0, c_white, 1);
}
}