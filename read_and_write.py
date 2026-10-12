import numpy as np

# Read text-based numeric data
x, y = np.loadtxt("guide_vane.dat", unpack=True)



with open("assignment.geo", "w") as file:
    
    # Loop over points and write them to the .dat file. 
    # Connect the newly written point to the previous one
    for i in range(len(x)):
        file.write(f"Point({i+1}) = {{{x[i]}, {y[i]}, 0, 1.0}};\n //+ \n")
        
    point_ids = ", ".join(str(i) for i in range(1, len(x) + 1))
    file.write(f"Line(1) = {{{point_ids}, 1}};\n //+ \n")
        
            


