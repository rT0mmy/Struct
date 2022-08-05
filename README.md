<div align="center">
	<h1>Luau Struct</h1>
	<p>Fast(er) & Lightweight version of <a href="https://github.com/rT0mmy/class">Event</a> </p>
  
  ![Luau](https://img.shields.io/badge/Lua-2C2D72?style=for-the-badge&logo=lua&logoColor=white)
  <br><br>
  Made by TommyRBLX
  
  <img src="https://img.shields.io/github/forks/rT0mmy/struct?style=for-the-badge">

  <img src="https://img.shields.io/github/stars/rT0mmy/struct?style=for-the-badge">

  <img src="https://img.shields.io/github/issues/rT0mmy/struct?style=for-the-badge">

  <img src="https://img.shields.io/github/issues-pr/rT0mmy/struct?style=for-the-badge">

  <img src="https://img.shields.io/github/license/rT0mmy/struct?style=for-the-badge">
</div>

<br><br><br><br>

> **Warning** <br>
> Struct is still under development, hence it's not fully functional. Major changes might occur.

<br>

> **Note** <br>
> Struct is a lightweight and limited version of [Class](https://github.com/rT0mmy/class), consider using it instead.

<br><br><br><br>

## API

```lua
local Struct = require(...)
```

<br><br>

```lua
Struct(StructName: string)(Data: {}) -> StructObject
```

```lua
Struct "Point" {
  x = 1,
  y = 5
}
```

> Creates a new ```StructObject```
 
 <br><br>

```lua
StructObject([OPTIONAL] InitProperties: {}) -> StructInstance
```

```lua
StructObject{
  x = 5
}
```

> Creates a new ```StructInstance```
 
 <br><br>

```lua
StructObject:Deconstruct() -> nil
```

```lua
StructObject:Deconstruct() -- // The struct will be deconstructed (destroyed)
```

> Deconstructs the ```StructObject``` and wipes all data, for it to be later collected by the gc.


<br><br><br>
## Demo

```lua
local Struct = require(...)

local Point = Struct "Point" {
	x = 0,
  y = 0
}

local NewPoint = Point {
  x = 5,
  y = 12
}

print(NewPoint.x)
```


