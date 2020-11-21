local l, rshift, lshift, band, ok, _
l = load
if loadstring then
  l = loadstring
end
ok, rshift = pcall(l("return function(x,n) return x >> n end"))
if ok then
  _, lshift = pcall(l("return function(x,n) return x << n end"))
  _, band = pcall(l("return function(a,b) return a & b end"))
else
  do
    local _obj_0 = require("bit")
    rshift, lshift, band = _obj_0.rshift, _obj_0.lshift, _obj_0.band
  end
end
return {
  rshift = rshift,
  lshift = lshift,
  band = band
}
