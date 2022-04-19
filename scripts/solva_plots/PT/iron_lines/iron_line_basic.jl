include("../../../iron_line_profile.jl")

mass_vars = [10, 100, 10e6]
spin_vars = [0.0, 0.5, 0.998]
angle_vars = [15.0, 40.0, 85.0]

mass_fixed = 10
spin_fixed = 0.998
angle_fixed = 40.0

# for mass in mass_vars
plt, hmap, title, cache = iron_line_profile(;
                                            mass=mass_fixed,
                                            spin=spin_fixed,
                                            obs_angle=angle_fixed,
                                            tolerance=1e-12,
                                            dtmax=0.5,
                                            size_multiplier=10,
                                            resolution=3000,
                                            output="plot",
                                            nbins=200,
                                            fov=10
                                            )
title!(title, titlefontsize=10)
png(plt, "iron_line_basic.png")