--- @diagnostic disable:lowercase-global

----------------------------------------
--- CONSTANTS
----------------------------------------

--- @type number
--- Special constant. Represents the Left button.
⬅️️ = 0;
--- @type number
--- Special constant. Represents the Right button.
➡️ = 1;
--- @type number
--- Special constant. Represents the Up button.
⬆️️ = 2;
--- @type number
--- Special constant. Represents the Down button.
⬇️ = 3;
--- @type number
--- Special constant. Represents the O button.
🅾 = 4;
--- @type number
--- Special constant. Represents the X button.
❎ = 5;


----------------------------------------
--- THE GAME LOOP
----------------------------------------

-- flip()


----------------------------------------
--- GRAPHICS
----------------------------------------

--- Sets the camera offset in the draw state.
--- API Reference: https://pico-8.fandom.com/wiki/Camera
--- @param x? number The x offset, in pixels, to subtract from future draw coordinates. (default 0)
--- @param y? number The y offset, in pixels, to subtract from future draw coordinates. (default 0)
function camera(x, y) end

--- Draws a circle shape, without fill.
--- API Reference: https://pico-8.fandom.com/wiki/Circ
--- @param x number The x coordinate of the center of the circle.
--- @param y number The y coordinate of the center of the circle.
--- @param r? number The radius of the circle, in pixels. If omitted, the radius will be 4.
--- @param col? number The color of the circle and fill. If omitted, the color from the draw state is used.
function circ(x, y, r, col) end

-- circfill(x, y, r, [col])
-- clip([x,] [y,] [w,] [h])

--- Clears the graphics buffer with the specified color.
--- API Reference: https://pico-8.fandom.com/wiki/Cls
--- @param color? number A color to use for the background. The default is 0 (black).
function cls(color) end

-- color(col)
-- cursor([x,] [y,] [col])
-- fget(n, [f])
-- fillp([pat])
-- fset(n, [f,] [v])

--- Draws a line between two points.
--- API Reference: https://pico-8.fandom.com/wiki/Line
--- @param x0? number The x coordinate of the start of the line. If omitted, the x coordinate of the end of the previous line is used, or 0 if no previous line has been drawn.
--- @param y0? number The y coordinate of the start of the line. If omitted, the y coordinate of the end of the previous line is used, or 0 if no previous line has been drawn.
--- @param x1? number The x coordinate of the end of the line.
--- @param y1? number The y coordinate of the end of the line.
--- @param col? number The color of the line. If omitted, the color from the draw state is used. This also sets the color in the draw state.
function line(x0, y0, x1, y1, col) end

-- pal([c0,] [c1,] [p])
-- palt([c,] [t])
-- pget(x, y)

--- Prints a string of characters to the screen.
--- Given only a Lua string, print uses the cursor location and draw color of the current draw state. The cursor position is moved to the next line, potentially scrolling the entire display up by a line.
--- API Reference: https://pico-8.fandom.com/wiki/Print
--- @param str string The string of characters to print.
--- @param x? number The x coordinate of the upper left corner to start printing.
--- @param y? number The y coordinate of the upper left corner to start printing.
--- @param col? number The color to use for the text.
function print(str, x, y, col) end
-- pset(x, y, [c])


--- Draws an empty rectangle shape.
--- API Reference: https://pico-8.fandom.com/wiki/Rect
--- @param x0 number The x coordinate of the upper left corner.
--- @param y0 number The y coordinate of the upper left corner.
--- @param x1 number The x coordinate of the lower right corner.
--- @param y1 number The y coordinate of the lower right corner.
--- @param col? number The color of the rectangle border. If omitted, the color from the draw state is used.
function rect(x0, y0, x1, y1, col) end

-- rectfill(x0, y0, x1, y1, [col])
-- sget(x, y)
-- spr(n, x, y, [w,] [h,] [flip_x,] [flip_y])
-- sset(x, y, [c])
-- sspr(sx, sy, sw, sh, dx, dy, [dw,] [dh,] [flip_x,] [flip_y])
-- tline(x0, y0, x1, y1, mx, my, [mdx,] [mdy])

----------------------------------------
--- TABLES
----------------------------------------

--- Adds an element to the end of a sequence in a table.
--- API Reference: https://pico-8.fandom.com/wiki/Add
--- @param tbl table The table.
--- @param v any The value to add.
--- @param i? number The index for the value to be inserted. Defaults to the end of the sequence.
function add(tbl, v, i ) end

--- Returns an iterator for all non-nil items in a sequence in a table, for use with for...in.
--- API Reference: https://pico-8.fandom.com/wiki/All
--- @param tbl table The table to iterate.
function all(tbl) end

-- del(t, v)
-- deli(t, i)
-- foreach(t, f)
-- pairs(t)

----------------------------------------
--- INPUT
----------------------------------------

--- Tests if a button is being pressed at this moment.
--- Buttons:
---   - 0: Left
---   - 1: Right
---   - 2: Up
---   - 3: Down
---   - 4: O
---   - 5: X
--- API Reference: https://pico-8.fandom.com/wiki/Btn
--- @param i? number The button number (0-5).
--- @param p? number The player number (0-7).
function btn(i, p) end

-- btnp([i,] [p])

----------------------------------------
--- SOUND
----------------------------------------

-- music([n,] [fade_len,] [channel_mask])
-- sfx(n, [channel,] [offset])

----------------------------------------
--- MAP
----------------------------------------

-- map(cel_x, cel_y, sx, sy, cel_w, cel_h, [layer])
-- mget(x, y)
-- mset(x, y, v)

----------------------------------------
--- MEMORY
----------------------------------------

-- cstore(dest_addr, source_addr, len, [filename])
-- memcpy(dest_addr, source_addr, len)
-- memset(dest_addr, val, len)
-- peek(addr)
-- poke(addr, val)
-- reload(dest_addr, source_addr, len, [filename])

----------------------------------------
--- MATH
----------------------------------------

-- abs(x)
-- atan2(dx, dy)
-- band(x, y)
-- bnot(x)
-- bor(x, y)
-- bxor(x, y)
-- cos(x)

--- Returns the integer portion (the "floor") of a number.
--- API Reference: https://pico-8.fandom.com/wiki/Flr
--- @param num number The number.
function flr(num) end

--- Returns the maximum of two numbers.
--- API Reference: https://pico-8.fandom.com/wiki/Max
--- @param first number The first number.
--- @param second? number The second number. (default 0)
function max(first, second) end

-- mid(x, y, z)
-- min(x, y)

--- Generates a random number between 0 and the given maximum exclusive, or returns a random element from a 1-based table sequence.
--- @param max? number|table The range, non-inclusive. Defaults to 1.
function rnd(max) end

-- sgn(x)
-- shl(x, y)
-- shr(x, y)
-- sin(x)

--- Calculates the square root of a number.
--- API Reference: https://pico-8.fandom.com/wiki/Sqrt
--- @param num number The number. Must be positive.
function sqrt(num) end

-- srand(x)

----------------------------------------
--- CARTRIDGE DATA
----------------------------------------

-- cartdata(id)
-- dget(index)
-- dset(index, value)

----------------------------------------
--- COROUTINES
----------------------------------------

-- cocreate(func)
-- coresume(cor)
-- costatus(cor)
-- yield()

----------------------------------------
--- VALUES AND OBJECTS
----------------------------------------

-- setmetatable(tbl, metatbl)
-- getmetatable(tbl)
-- type(v)
-- sub(str, from, [to])
-- tonum(str)
-- tostr(val, [usehex])

----------------------------------------
--- TIME
----------------------------------------

-- time()

----------------------------------------
--- SYSTEM
----------------------------------------

-- menuitem(index, [label, callback])
-- extcmd(cmd)

----------------------------------------
--- DEBUGGING
----------------------------------------

--- Causes a runtime error if a conditional expression is false.
--- API Reference: https://pico-8.fandom.com/wiki/Assert
--- @param cond boolean The conditional expression to assert.
--- @param message? string The message to print when the assertion fails.
function assert(cond, message) end

-- printh(str, [filename], [overwrite])
-- stat(n)
-- stop() (undocumented)
-- trace() (undocumented)
