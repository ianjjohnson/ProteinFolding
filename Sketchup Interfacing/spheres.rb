sphere=Sketchup.active_model.definitions.load("/Users/student/Dropbox/AP Comp Sci/ProteinFolding/Sketchup Interfacing/sphere.skp")

#comment

model = Sketchup.active_model
#definitions = model.definitions
#component = definitions.at 1

entities = model.entities

for x in 0..12
    for y in 0..12
        for z in 0..12
            entities.add_instance(sphere, Geom::Transformation.new([79*x,79*y,79*z]))
        end
    end
end