library(dplyr)
DiagrammeR::grViz("
digraph inheritance {

  # a 'graph' statement
  graph [overlap = true]

  # several 'node' statements
  node [shape = box,
        fontname = Helvetica,
        width = 0.6,
        fontsize = 7,
        style = filled,
        fillcolor = Grey]
  vector;
  
    node [shape = box,
        fontname = Helvetica,
         width = 0.6,
        fontsize = 7,
        style = filled,
        fillcolor = Grey]
  numeric;

  node [shape = box,
        fixedsize = true,
        width = 0.6,
        fontsize = 7,
        style = filled,
        fillcolor = Grey] // sets as circles
  double;
  
    node [shape = box,
        fontname = Helvetica,
        width = 0.6,
        fontsize = 7,
        style = filled,
        fillcolor = Grey]
  integer;
  
  vector->numeric
  numeric->double
  double->integer

}") %>%
  DiagrammeRsvg::export_svg() %>%
  charToRaw() %>%
  rsvg::rsvg_png("diagrams/inheritance_numeric.png", width = 640, height = 3250)


DiagrammeR::grViz("
digraph inheritance {

  # a 'graph' statement
  graph [overlap = true]

  # several 'node' statements
  node [shape = box,
        fontname = Helvetica,
        style = filled,
        fillcolor = Grey]
  Vehicle;

  node [shape = box,
        fixedsize = true,
        width = 0.6,
        fontsize = 7,
        style = filled,
        fillcolor = Grey] // sets as circles
  Car; Motorbike; Van

  Vehicle->Car
  Vehicle->Van
  Vehicle->Motorbike

}") %>%
  DiagrammeRsvg::export_svg() %>%
  charToRaw() %>%
  rsvg::rsvg_png("diagrams/inheritance_cars.png", height = 1450, width = 2160)

DiagrammeR::grViz("
digraph environments {

  # a 'graph' statement
  graph [overlap = true]

  # several 'node' statements
  node [shape = box,
        fontname = Helvetica,
        fillcolor = Grey,
        width = 0.6,
        style= filled]
  'empty environment';
  'base environment';
  'package environment\n(e.g. package:BMRSr)';
  'global environment';

  # several 'edge' statements
  'empty environment'->'base environment'
  'base environment'->'package environment\n(e.g. package:BMRSr)'
  'package environment\n(e.g. package:BMRSr)'->'global environment' 
}
") %>%
  DiagrammeRsvg::export_svg() %>%
  charToRaw() %>%
  rsvg::rsvg_png("diagrams/environments.png", width = 2030, height = 3330)

DiagrammeR::grViz("
digraph class {

  # a 'graph' statement
  graph [overlap = true]

  # several 'node' statements
  node [shape = box,
        fontname = Helvetica,
        style = filled,
        fillcolor = Grey]
  Person

  node [shape = circle,
        fixedsize = true,
        width = 0.8,
        fontsize = 8] // sets as circles
  Name; Nationality; Ethnicity

  # several 'edge' statements
  Person->Name Person->Nationality Person->Ethnicity 
}
") %>%
  DiagrammeRsvg::export_svg() %>%
  charToRaw() %>%
  rsvg::rsvg_png("diagrams/objects.png", width = 2730, height = 1730)
