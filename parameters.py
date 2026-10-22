import gmsh

gmsh.initialize()
gmsh.model.add("points")
geo = gmsh.model.geo

lc = 0.1
lc_fine = 0.01

# 1. Define endpoints AND the point on the line
a = geo.addPoint(0, 0, 0, lc)
p = geo.addPoint(1, 0, 0, lc_fine)  # Intermediate point on the line path
b = geo.addPoint(5, 0, 0, lc)

# 2. Connect as two lines sharing point 'p'
line1 = geo.addLine(a, p)
line2 = geo.addLine(p, b)

# 3. Synchronize built-in kernel
geo.synchronize()

# 4. Assign physical group
group = gmsh.model.addPhysicalGroup(0, [p])
gmsh.model.setPhysicalName(0, group, "embedded point")

# 5. Export clean .geo file
gmsh.write("my_geometry.geo_unrolled")

gmsh.finalize()