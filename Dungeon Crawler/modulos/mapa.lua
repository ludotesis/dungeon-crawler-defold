local M = {}

-- 0 = Espacio vacío, 1 = Pared
M.grid = {
	{1, 1, 1, 1, 1,1, 1, 1, 1, 1},
	{1, 0, 0, 0, 0,0, 0, 0, 0, 1},
	{1, 0, 1, 1, 1,0, 1, 1, 0, 1},
	{1, 0, 0, 0, 0,0, 0, 0, 0, 1},
	{1, 1, 1, 1, 1,1, 1, 1, 1, 1}
}

-- Función para comprobar si una casilla es transitable
function M.is_walkable(x, z)
	if M.grid[x] and M.grid[x][z] == 0 then
		return true
	end
	return false
end

return M
