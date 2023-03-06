function ColorMyPencils(color, background)
  background = background or "dark"
	color = color or "tokyonight-storm"
  vim.o.background = background

  if background == "light" then
    vim.g["gruvbox_contrast_light"] = "soft"
    vim.g["airline_theme"] = "solarized"
    vim.g["airline_solarized_bg"] = "light"
  else
    vim.g["gruvbox_contrast_dark"] = "medium"
    vim.g["airline_theme"] = "bubblegum"
  end

	vim.cmd.colorscheme(color)
end

ColorMyPencils()
