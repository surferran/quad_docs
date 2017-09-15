(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.1' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[    155774,       4577]
NotebookOptionsPosition[    152544,       4463]
NotebookOutlinePosition[    153038,       4483]
CellTagsIndexPosition[    152995,       4480]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell["quad test driven development and testing", "Text",
 CellChangeTimes->{{3.7062727600175734`*^9, 3.706272770777322*^9}}],

Cell[BoxData[{
 RowBox[{"required", ":", " ", 
  RowBox[{
  "system", " ", "of", " ", "2", " ", "quads", " ", "and", " ", "1", " ", 
   "payload"}]}], "\[IndentingNewLine]", 
 RowBox[{"constraigns", " ", ":", " ", 
  RowBox[{
   RowBox[{"not", " ", "given", " ", 
    RowBox[{"expicitly", ".", " ", "can"}], " ", "make", " ", "ones"}], 
   ".."}], " "}]}], "Input",
 CellChangeTimes->{{3.70627286365823*^9, 3.706272898517696*^9}}],

Cell[BoxData[{"test1", "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
  "motion", " ", "equations", " ", "by", " ", "Newton", " ", "method"}], " ", 
  "\[Equal]", " ", 
  RowBox[{
  "motion", " ", "equations", " ", "by", " ", "Lagrangian", " ", 
   "method"}]}]}], "Input",
 CellChangeTimes->{{3.7062727730188937`*^9, 3.7062728258927474`*^9}}],

Cell[TextData[{
 "quastions TODO :\nhow to paint vector for direction of forces  ,and \
coordinate systems.\n how to do it in ",
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 ", in Python (blender,matplotlib)\nhow to paint moment arrow. same \
applications in question.\n"
}], "Text",
 CellChangeTimes->{{3.706272781673526*^9, 3.7062727889079*^9}, {
  3.706272913877437*^9, 3.7062730232398977`*^9}}],

Cell["\<\
system elements :
quad 1 (6dof)
quad 2 (6dof)
payload (contrained to quads locations)\
\>", "Text",
 CellChangeTimes->{{3.710428578546528*^9, 3.710428624624096*^9}}],

Cell[" ", "Text",
 Editable->False,
 Selectable->False,
 CellFrame->{{0, 0}, {0, 0.5}},
 ShowCellBracket->False,
 CellMargins->{{0, 0}, {1, 1}},
 CellElementSpacings->{"CellMinHeight"->1},
 CellFrameMargins->0,
 CellFrameColor->RGBColor[0, 0, 1],
 CellSize->{Inherited, 3}],

Cell["kinematics :", "Text",
 CellChangeTimes->{{3.710428634464198*^9, 3.7104286669080753`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["X", "1"], "=", 
     RowBox[{"(", GridBox[{
        {
         RowBox[{
          SubscriptBox["x", "1"], "[", "t", "]"}]},
        {
         RowBox[{
          SubscriptBox["y", "1"], "[", "t", "]"}]},
        {
         RowBox[{
          SubscriptBox["z", "1"], "[", "t", "]"}]}
       }], ")"}]}], ")"}], "//", "MatrixForm"}], "//", 
  "TraditionalForm"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"(", 
    RowBox[{"Imat", "=", 
     RowBox[{"(", GridBox[{
        {
         SubscriptBox["I", "11"], "0", "0"},
        {"0", 
         SubscriptBox["I", "12"], "0"},
        {"0", "0", 
         SubscriptBox["I", "13"]}
       }], ")"}]}], ")"}], "//", "MatrixForm"}], "//", 
  "TraditionalForm"}], "\[IndentingNewLine]", 
 RowBox[{
  SubscriptBox["\[Omega]", "1"], "=", 
  RowBox[{"{", 
   RowBox[{
    SubscriptBox["p", "1"], ",", 
    SubscriptBox["q", "1"], ",", 
    SubscriptBox["r", "1"]}], "}"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["X", "2"], "=", 
     RowBox[{"(", GridBox[{
        {
         RowBox[{
          SubscriptBox["x", "2"], "[", "t", "]"}]},
        {
         RowBox[{
          SubscriptBox["y", "2"], "[", "t", "]"}]},
        {
         RowBox[{
          SubscriptBox["z", "2"], "[", "t", "]"}]}
       }], ")"}]}], ")"}], "//", "MatrixForm"}], "//", 
  "TraditionalForm"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"(", 
    RowBox[{"Imat", "=", 
     RowBox[{"(", GridBox[{
        {
         SubscriptBox["I", "11"], "0", "0"},
        {"0", 
         SubscriptBox["I", "12"], "0"},
        {"0", "0", 
         SubscriptBox["I", "13"]}
       }], ")"}]}], ")"}], "//", "MatrixForm"}], "//", 
  "TraditionalForm"}], "\[IndentingNewLine]", 
 RowBox[{
  SubscriptBox["\[Omega]", "2"], "=", 
  RowBox[{"{", 
   RowBox[{
    SubscriptBox["p", "2"], ",", 
    SubscriptBox["q", "2"], ",", 
    SubscriptBox["r", "2"]}], "}"}]}]}], "Input",
 CellChangeTimes->{3.7104715759556494`*^9}],

Cell[BoxData[
 FormBox[
  TagBox[
   RowBox[{"(", "\[NoBreak]", GridBox[{
      {
       RowBox[{
        SubscriptBox["x", "1"], "(", "t", ")"}]},
      {
       RowBox[{
        SubscriptBox["y", "1"], "(", "t", ")"}]},
      {
       RowBox[{
        SubscriptBox["z", "1"], "(", "t", ")"}]}
     },
     GridBoxAlignment->{
      "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}},
        "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.7]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
   Function[BoxForm`e$, 
    MatrixForm[BoxForm`e$]]], TraditionalForm]], "Output",
 CellChangeTimes->{3.710468010984214*^9, 3.7104708468876653`*^9, 
  3.7104709380314045`*^9, 3.7104715777378287`*^9}],

Cell[BoxData[
 FormBox[
  TagBox[
   RowBox[{"(", "\[NoBreak]", GridBox[{
      {
       SubscriptBox["\[ImaginaryI]", "11"], "0", "0"},
      {"0", 
       SubscriptBox["\[ImaginaryI]", "12"], "0"},
      {"0", "0", 
       SubscriptBox["\[ImaginaryI]", "13"]}
     },
     GridBoxAlignment->{
      "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}},
        "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.7]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
   Function[BoxForm`e$, 
    MatrixForm[BoxForm`e$]]], TraditionalForm]], "Output",
 CellChangeTimes->{3.710468010984214*^9, 3.7104708468876653`*^9, 
  3.7104709380314045`*^9, 3.710471577742833*^9}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   SubscriptBox["p", "1"], ",", 
   SubscriptBox["q", "1"], ",", 
   SubscriptBox["r", "1"]}], "}"}]], "Output",
 CellChangeTimes->{3.710468010984214*^9, 3.7104708468876653`*^9, 
  3.7104709380314045`*^9, 3.710471577748839*^9}],

Cell[BoxData[
 FormBox[
  TagBox[
   RowBox[{"(", "\[NoBreak]", GridBox[{
      {
       RowBox[{
        SubscriptBox["x", "2"], "(", "t", ")"}]},
      {
       RowBox[{
        SubscriptBox["y", "2"], "(", "t", ")"}]},
      {
       RowBox[{
        SubscriptBox["z", "2"], "(", "t", ")"}]}
     },
     GridBoxAlignment->{
      "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}},
        "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.7]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
   Function[BoxForm`e$, 
    MatrixForm[BoxForm`e$]]], TraditionalForm]], "Output",
 CellChangeTimes->{3.710468010984214*^9, 3.7104708468876653`*^9, 
  3.7104709380314045`*^9, 3.7104715777508383`*^9}],

Cell[BoxData[
 FormBox[
  TagBox[
   RowBox[{"(", "\[NoBreak]", GridBox[{
      {
       SubscriptBox["\[ImaginaryI]", "11"], "0", "0"},
      {"0", 
       SubscriptBox["\[ImaginaryI]", "12"], "0"},
      {"0", "0", 
       SubscriptBox["\[ImaginaryI]", "13"]}
     },
     GridBoxAlignment->{
      "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}},
        "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.7]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
   Function[BoxForm`e$, 
    MatrixForm[BoxForm`e$]]], TraditionalForm]], "Output",
 CellChangeTimes->{3.710468010984214*^9, 3.7104708468876653`*^9, 
  3.7104709380314045`*^9, 3.7104715777538395`*^9}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   SubscriptBox["p", "2"], ",", 
   SubscriptBox["q", "2"], ",", 
   SubscriptBox["r", "2"]}], "}"}]], "Output",
 CellChangeTimes->{3.710468010984214*^9, 3.7104708468876653`*^9, 
  3.7104709380314045`*^9, 3.7104715777568426`*^9}]
}, Open  ]],

Cell["rotations :", "Text",
 CellChangeTimes->{{3.7104289556763086`*^9, 3.710428961924445*^9}, 
   3.710429371013914*^9}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  SubscriptBox["X", "I"], "=", 
  RowBox[{"{", 
   RowBox[{"1", ",", "0", ",", "0"}], "}"}]}], "\[IndentingNewLine]", 
 RowBox[{
  SubscriptBox["Y", "I"], "=", 
  RowBox[{"{", 
   RowBox[{"0", ",", "1", ",", "0"}], "}"}]}], "\[IndentingNewLine]", 
 RowBox[{
  SubscriptBox["Z", "I"], "=", 
  RowBox[{"{", 
   RowBox[{"0", ",", "0", ",", "1"}], "}"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"(", 
   RowBox[{"Rx", "=", 
    RowBox[{"RotationMatrix", "[", 
     RowBox[{
      RowBox[{"\[Phi]", "[", "t", "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"1", ",", "0", ",", "0"}], "}"}]}], "]"}]}], ")"}], "//", 
  "MatrixForm"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"(", 
   RowBox[{"Ry", "=", 
    RowBox[{"RotationMatrix", "[", 
     RowBox[{
      RowBox[{"\[Theta]", "[", "t", "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"0", ",", "1", ",", "0"}], "}"}]}], "]"}]}], ")"}], "//", 
  "MatrixForm"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"(", 
   RowBox[{"Rz", "=", 
    RowBox[{"RotationMatrix", "[", 
     RowBox[{
      RowBox[{"\[Psi]", "[", "t", "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"0", ",", "0", ",", "1"}], "}"}]}], "]"}]}], ")"}], "//", 
  "MatrixForm"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      OverscriptBox[
       SubscriptBox["R", "B"], "I"], "=", 
      RowBox[{"Rz", ".", "Ry", ".", "Rx"}]}], ")"}], "/.", 
    RowBox[{"Cos", "\[Rule]", " ", "C"}]}], "/.", 
   RowBox[{"Sin", "\[Rule]", "S"}]}], "//", 
  "MatrixForm"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"(", 
    RowBox[{"vec3", " ", "=", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"Rx", ".", " ", "Ry"}], ")"}], ".", 
      RowBox[{"{", 
       RowBox[{"0", ",", "0", ",", "1"}], "}"}]}]}], ")"}], "/.", 
   RowBox[{"Cos", "\[Rule]", " ", "C"}]}], "/.", 
  RowBox[{"Sin", "\[Rule]", "S"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"(", 
    RowBox[{"vec2", " ", "=", 
     RowBox[{
      RowBox[{"(", "Rx", ")"}], ".", 
      RowBox[{"{", 
       RowBox[{"0", ",", "1", ",", "0"}], "}"}]}]}], ")"}], "/.", 
   RowBox[{"Cos", "\[Rule]", " ", "C"}]}], "/.", 
  RowBox[{"Sin", "\[Rule]", "S"}]}], "\[IndentingNewLine]", 
 RowBox[{"(", 
  RowBox[{"vec1", "=", 
   RowBox[{"{", 
    RowBox[{"1", ",", "0", ",", "0"}], "}"}]}], ")"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"(", 
   RowBox[{
    OverscriptBox[
     SubscriptBox["R", "Euler"], "PQR"], "=", 
    RowBox[{"Transpose", "[", 
     RowBox[{"Join", "[", 
      RowBox[{
       RowBox[{"{", "vec1", "}"}], ",", 
       RowBox[{"{", "vec2", "}"}], ",", 
       RowBox[{"{", "vec3", "}"}]}], "]"}], "]"}]}], ")"}], "//", 
  "MatrixForm"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"(", 
   RowBox[{
    OverscriptBox[
     SubscriptBox["R", "pqr"], "euler"], "=", 
    RowBox[{
     RowBox[{"Inverse", "[", 
      OverscriptBox[
       SubscriptBox["R", "Euler"], "PQR"], "]"}], "//", "FullSimplify"}]}], 
   ")"}], "//", "MatrixForm"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"(", 
   RowBox[{"pqrvec", " ", "=", 
    RowBox[{
     RowBox[{
      OverscriptBox[
       SubscriptBox["R", "Euler"], "PQR"], ".", 
      RowBox[{"D", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"\[Phi]", "[", "t", "]"}], ",", 
          RowBox[{"\[Theta]", "[", "t", "]"}], ",", 
          RowBox[{"\[Psi]", "[", "t", "]"}]}], "}"}], ",", "t"}], "]"}]}], "//",
      "FullSimplify"}]}], ")"}], "//", "MatrixForm"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"(", 
   RowBox[{
    SubscriptBox["\[Omega]", "1"], "=", " ", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{
         OverscriptBox[
          SubscriptBox["R", "Euler"], "PQR"], ".", 
         RowBox[{"D", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"\[Phi]", "[", "t", "]"}], ",", 
             RowBox[{"\[Theta]", "[", "t", "]"}], ",", 
             RowBox[{"\[Psi]", "[", "t", "]"}]}], "}"}], ",", "t"}], "]"}]}], 
        "/.", 
        RowBox[{"\[Phi]", "\[Rule]", 
         SubscriptBox["\[Phi]", "1"]}]}], "/.", 
       RowBox[{"\[Theta]", "\[Rule]", 
        SubscriptBox["\[Theta]", "1"]}]}], "/.", 
      RowBox[{"\[Psi]", "\[Rule]", 
       SubscriptBox["\[Psi]", "1"]}]}], "//", "FullSimplify"}]}], ")"}], "//",
   "MatrixForm"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"(", 
   RowBox[{
    SubscriptBox["\[Omega]", "2"], "=", " ", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{
         OverscriptBox[
          SubscriptBox["R", "Euler"], "PQR"], ".", 
         RowBox[{"D", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"\[Phi]", "[", "t", "]"}], ",", 
             RowBox[{"\[Theta]", "[", "t", "]"}], ",", 
             RowBox[{"\[Psi]", "[", "t", "]"}]}], "}"}], ",", "t"}], "]"}]}], 
        "/.", 
        RowBox[{"\[Phi]", "\[Rule]", 
         SubscriptBox["\[Phi]", "2"]}]}], "/.", 
       RowBox[{"\[Theta]", "\[Rule]", 
        SubscriptBox["\[Theta]", "2"]}]}], "/.", 
      RowBox[{"\[Psi]", "\[Rule]", 
       SubscriptBox["\[Psi]", "2"]}]}], "//", "FullSimplify"}]}], ")"}], "//",
   "MatrixForm"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"(", 
    RowBox[{"X1dot", "=", 
     RowBox[{"D", "[", 
      RowBox[{
       SubscriptBox["X", "1"], ",", "t"}], "]"}]}], ")"}], "//", 
   "MatrixForm"}], "//", "TraditionalForm"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"(", 
    RowBox[{"X2dot", "=", 
     RowBox[{"D", "[", 
      RowBox[{
       SubscriptBox["X", "2"], ",", "t"}], "]"}]}], ")"}], "//", 
   "MatrixForm"}], "//", "TraditionalForm"}]}], "Input",
 CellChangeTimes->{{3.7104289647845106`*^9, 3.7104290144430237`*^9}, 
   3.710429102338524*^9, {3.7104291501982512`*^9, 3.710429151538307*^9}, 
   3.710429375154004*^9, {3.710429518925733*^9, 3.7104295202057614`*^9}, {
   3.7104709588502064`*^9, 3.710471000935107*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"1", ",", "0", ",", "0"}], "}"}]], "Output",
 CellChangeTimes->{3.7104708725346613`*^9, 3.7104710026612525`*^9, 
  3.710471583333539*^9}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"0", ",", "1", ",", "0"}], "}"}]], "Output",
 CellChangeTimes->{3.7104708725346613`*^9, 3.7104710026612525`*^9, 
  3.710471583338542*^9}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"0", ",", "0", ",", "1"}], "}"}]], "Output",
 CellChangeTimes->{3.7104708725346613`*^9, 3.7104710026612525`*^9, 
  3.7104715833425455`*^9}],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"1", "0", "0"},
     {"0", 
      RowBox[{"Cos", "[", 
       RowBox[{"\[Phi]", "[", "t", "]"}], "]"}], 
      RowBox[{"-", 
       RowBox[{"Sin", "[", 
        RowBox[{"\[Phi]", "[", "t", "]"}], "]"}]}]},
     {"0", 
      RowBox[{"Sin", "[", 
       RowBox[{"\[Phi]", "[", "t", "]"}], "]"}], 
      RowBox[{"Cos", "[", 
       RowBox[{"\[Phi]", "[", "t", "]"}], "]"}]}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{3.7104708725346613`*^9, 3.7104710026612525`*^9, 
  3.7104715833475504`*^9}],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      RowBox[{"Cos", "[", 
       RowBox[{"\[Theta]", "[", "t", "]"}], "]"}], "0", 
      RowBox[{"Sin", "[", 
       RowBox[{"\[Theta]", "[", "t", "]"}], "]"}]},
     {"0", "1", "0"},
     {
      RowBox[{"-", 
       RowBox[{"Sin", "[", 
        RowBox[{"\[Theta]", "[", "t", "]"}], "]"}]}], "0", 
      RowBox[{"Cos", "[", 
       RowBox[{"\[Theta]", "[", "t", "]"}], "]"}]}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{3.7104708725346613`*^9, 3.7104710026612525`*^9, 
  3.710471583351551*^9}],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      RowBox[{"Cos", "[", 
       RowBox[{"\[Psi]", "[", "t", "]"}], "]"}], 
      RowBox[{"-", 
       RowBox[{"Sin", "[", 
        RowBox[{"\[Psi]", "[", "t", "]"}], "]"}]}], "0"},
     {
      RowBox[{"Sin", "[", 
       RowBox[{"\[Psi]", "[", "t", "]"}], "]"}], 
      RowBox[{"Cos", "[", 
       RowBox[{"\[Psi]", "[", "t", "]"}], "]"}], "0"},
     {"0", "0", "1"}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{3.7104708725346613`*^9, 3.7104710026612525`*^9, 
  3.7104715833545523`*^9}],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      RowBox[{
       RowBox[{"C", "[", 
        RowBox[{"\[Theta]", "[", "t", "]"}], "]"}], " ", 
       RowBox[{"C", "[", 
        RowBox[{"\[Psi]", "[", "t", "]"}], "]"}]}], 
      RowBox[{
       RowBox[{
        RowBox[{"C", "[", 
         RowBox[{"\[Psi]", "[", "t", "]"}], "]"}], " ", 
        RowBox[{"S", "[", 
         RowBox[{"\[Theta]", "[", "t", "]"}], "]"}], " ", 
        RowBox[{"S", "[", 
         RowBox[{"\[Phi]", "[", "t", "]"}], "]"}]}], "-", 
       RowBox[{
        RowBox[{"C", "[", 
         RowBox[{"\[Phi]", "[", "t", "]"}], "]"}], " ", 
        RowBox[{"S", "[", 
         RowBox[{"\[Psi]", "[", "t", "]"}], "]"}]}]}], 
      RowBox[{
       RowBox[{
        RowBox[{"C", "[", 
         RowBox[{"\[Phi]", "[", "t", "]"}], "]"}], " ", 
        RowBox[{"C", "[", 
         RowBox[{"\[Psi]", "[", "t", "]"}], "]"}], " ", 
        RowBox[{"S", "[", 
         RowBox[{"\[Theta]", "[", "t", "]"}], "]"}]}], "+", 
       RowBox[{
        RowBox[{"S", "[", 
         RowBox[{"\[Phi]", "[", "t", "]"}], "]"}], " ", 
        RowBox[{"S", "[", 
         RowBox[{"\[Psi]", "[", "t", "]"}], "]"}]}]}]},
     {
      RowBox[{
       RowBox[{"C", "[", 
        RowBox[{"\[Theta]", "[", "t", "]"}], "]"}], " ", 
       RowBox[{"S", "[", 
        RowBox[{"\[Psi]", "[", "t", "]"}], "]"}]}], 
      RowBox[{
       RowBox[{
        RowBox[{"C", "[", 
         RowBox[{"\[Phi]", "[", "t", "]"}], "]"}], " ", 
        RowBox[{"C", "[", 
         RowBox[{"\[Psi]", "[", "t", "]"}], "]"}]}], "+", 
       RowBox[{
        RowBox[{"S", "[", 
         RowBox[{"\[Theta]", "[", "t", "]"}], "]"}], " ", 
        RowBox[{"S", "[", 
         RowBox[{"\[Phi]", "[", "t", "]"}], "]"}], " ", 
        RowBox[{"S", "[", 
         RowBox[{"\[Psi]", "[", "t", "]"}], "]"}]}]}], 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         RowBox[{"C", "[", 
          RowBox[{"\[Psi]", "[", "t", "]"}], "]"}]}], " ", 
        RowBox[{"S", "[", 
         RowBox[{"\[Phi]", "[", "t", "]"}], "]"}]}], "+", 
       RowBox[{
        RowBox[{"C", "[", 
         RowBox[{"\[Phi]", "[", "t", "]"}], "]"}], " ", 
        RowBox[{"S", "[", 
         RowBox[{"\[Theta]", "[", "t", "]"}], "]"}], " ", 
        RowBox[{"S", "[", 
         RowBox[{"\[Psi]", "[", "t", "]"}], "]"}]}]}]},
     {
      RowBox[{"-", 
       RowBox[{"S", "[", 
        RowBox[{"\[Theta]", "[", "t", "]"}], "]"}]}], 
      RowBox[{
       RowBox[{"C", "[", 
        RowBox[{"\[Theta]", "[", "t", "]"}], "]"}], " ", 
       RowBox[{"S", "[", 
        RowBox[{"\[Phi]", "[", "t", "]"}], "]"}]}], 
      RowBox[{
       RowBox[{"C", "[", 
        RowBox[{"\[Theta]", "[", "t", "]"}], "]"}], " ", 
       RowBox[{"C", "[", 
        RowBox[{"\[Phi]", "[", "t", "]"}], "]"}]}]}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{3.7104708725346613`*^9, 3.7104710026612525`*^9, 
  3.7104715833605556`*^9}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"S", "[", 
    RowBox[{"\[Theta]", "[", "t", "]"}], "]"}], ",", 
   RowBox[{
    RowBox[{"-", 
     RowBox[{"C", "[", 
      RowBox[{"\[Theta]", "[", "t", "]"}], "]"}]}], " ", 
    RowBox[{"S", "[", 
     RowBox[{"\[Phi]", "[", "t", "]"}], "]"}]}], ",", 
   RowBox[{
    RowBox[{"C", "[", 
     RowBox[{"\[Theta]", "[", "t", "]"}], "]"}], " ", 
    RowBox[{"C", "[", 
     RowBox[{"\[Phi]", "[", "t", "]"}], "]"}]}]}], "}"}]], "Output",
 CellChangeTimes->{3.7104708725346613`*^9, 3.7104710026612525`*^9, 
  3.71047158336556*^9}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"0", ",", 
   RowBox[{"C", "[", 
    RowBox[{"\[Phi]", "[", "t", "]"}], "]"}], ",", 
   RowBox[{"S", "[", 
    RowBox[{"\[Phi]", "[", "t", "]"}], "]"}]}], "}"}]], "Output",
 CellChangeTimes->{3.7104708725346613`*^9, 3.7104710026612525`*^9, 
  3.7104715833675613`*^9}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"1", ",", "0", ",", "0"}], "}"}]], "Output",
 CellChangeTimes->{3.7104708725346613`*^9, 3.7104710026612525`*^9, 
  3.7104715833705635`*^9}],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"1", "0", 
      RowBox[{"Sin", "[", 
       RowBox[{"\[Theta]", "[", "t", "]"}], "]"}]},
     {"0", 
      RowBox[{"Cos", "[", 
       RowBox[{"\[Phi]", "[", "t", "]"}], "]"}], 
      RowBox[{
       RowBox[{"-", 
        RowBox[{"Cos", "[", 
         RowBox[{"\[Theta]", "[", "t", "]"}], "]"}]}], " ", 
       RowBox[{"Sin", "[", 
        RowBox[{"\[Phi]", "[", "t", "]"}], "]"}]}]},
     {"0", 
      RowBox[{"Sin", "[", 
       RowBox[{"\[Phi]", "[", "t", "]"}], "]"}], 
      RowBox[{
       RowBox[{"Cos", "[", 
        RowBox[{"\[Theta]", "[", "t", "]"}], "]"}], " ", 
       RowBox[{"Cos", "[", 
        RowBox[{"\[Phi]", "[", "t", "]"}], "]"}]}]}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{3.7104708725346613`*^9, 3.7104710026612525`*^9, 
  3.7104715833725653`*^9}],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"1", 
      RowBox[{
       RowBox[{"Sin", "[", 
        RowBox[{"\[Phi]", "[", "t", "]"}], "]"}], " ", 
       RowBox[{"Tan", "[", 
        RowBox[{"\[Theta]", "[", "t", "]"}], "]"}]}], 
      RowBox[{
       RowBox[{"-", 
        RowBox[{"Cos", "[", 
         RowBox[{"\[Phi]", "[", "t", "]"}], "]"}]}], " ", 
       RowBox[{"Tan", "[", 
        RowBox[{"\[Theta]", "[", "t", "]"}], "]"}]}]},
     {"0", 
      RowBox[{"Cos", "[", 
       RowBox[{"\[Phi]", "[", "t", "]"}], "]"}], 
      RowBox[{"Sin", "[", 
       RowBox[{"\[Phi]", "[", "t", "]"}], "]"}]},
     {"0", 
      RowBox[{
       RowBox[{"-", 
        RowBox[{"Sec", "[", 
         RowBox[{"\[Theta]", "[", "t", "]"}], "]"}]}], " ", 
       RowBox[{"Sin", "[", 
        RowBox[{"\[Phi]", "[", "t", "]"}], "]"}]}], 
      RowBox[{
       RowBox[{"Cos", "[", 
        RowBox[{"\[Phi]", "[", "t", "]"}], "]"}], " ", 
       RowBox[{"Sec", "[", 
        RowBox[{"\[Theta]", "[", "t", "]"}], "]"}]}]}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{3.7104708725346613`*^9, 3.7104710026612525`*^9, 
  3.7104715834686284`*^9}],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
      {
       RowBox[{
        RowBox[{
         SuperscriptBox["\[Phi]", "\[Prime]",
          MultilineFunction->None], "[", "t", "]"}], "+", 
        RowBox[{
         RowBox[{"Sin", "[", 
          RowBox[{"\[Theta]", "[", "t", "]"}], "]"}], " ", 
         RowBox[{
          SuperscriptBox["\[Psi]", "\[Prime]",
           MultilineFunction->None], "[", "t", "]"}]}]}]},
      {
       RowBox[{
        RowBox[{
         RowBox[{"Cos", "[", 
          RowBox[{"\[Phi]", "[", "t", "]"}], "]"}], " ", 
         RowBox[{
          SuperscriptBox["\[Theta]", "\[Prime]",
           MultilineFunction->None], "[", "t", "]"}]}], "-", 
        RowBox[{
         RowBox[{"Cos", "[", 
          RowBox[{"\[Theta]", "[", "t", "]"}], "]"}], " ", 
         RowBox[{"Sin", "[", 
          RowBox[{"\[Phi]", "[", "t", "]"}], "]"}], " ", 
         RowBox[{
          SuperscriptBox["\[Psi]", "\[Prime]",
           MultilineFunction->None], "[", "t", "]"}]}]}]},
      {
       RowBox[{
        RowBox[{
         RowBox[{"Sin", "[", 
          RowBox[{"\[Phi]", "[", "t", "]"}], "]"}], " ", 
         RowBox[{
          SuperscriptBox["\[Theta]", "\[Prime]",
           MultilineFunction->None], "[", "t", "]"}]}], "+", 
        RowBox[{
         RowBox[{"Cos", "[", 
          RowBox[{"\[Theta]", "[", "t", "]"}], "]"}], " ", 
         RowBox[{"Cos", "[", 
          RowBox[{"\[Phi]", "[", "t", "]"}], "]"}], " ", 
         RowBox[{
          SuperscriptBox["\[Psi]", "\[Prime]",
           MultilineFunction->None], "[", "t", "]"}]}]}]}
     },
     GridBoxAlignment->{
      "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}},
        "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}],
    Column], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{3.7104708725346613`*^9, 3.7104710026612525`*^9, 
  3.7104715835736976`*^9}],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
      {
       RowBox[{
        RowBox[{
         SuperscriptBox[
          SubscriptBox["\[Phi]", "1"], "\[Prime]",
          MultilineFunction->None], "[", "t", "]"}], "+", 
        RowBox[{
         RowBox[{"Sin", "[", 
          RowBox[{
           SubscriptBox["\[Theta]", "1"], "[", "t", "]"}], "]"}], " ", 
         RowBox[{
          SuperscriptBox[
           SubscriptBox["\[Psi]", "1"], "\[Prime]",
           MultilineFunction->None], "[", "t", "]"}]}]}]},
      {
       RowBox[{
        RowBox[{
         RowBox[{"Cos", "[", 
          RowBox[{
           SubscriptBox["\[Phi]", "1"], "[", "t", "]"}], "]"}], " ", 
         RowBox[{
          SuperscriptBox[
           SubscriptBox["\[Theta]", "1"], "\[Prime]",
           MultilineFunction->None], "[", "t", "]"}]}], "-", 
        RowBox[{
         RowBox[{"Cos", "[", 
          RowBox[{
           SubscriptBox["\[Theta]", "1"], "[", "t", "]"}], "]"}], " ", 
         RowBox[{"Sin", "[", 
          RowBox[{
           SubscriptBox["\[Phi]", "1"], "[", "t", "]"}], "]"}], " ", 
         RowBox[{
          SuperscriptBox[
           SubscriptBox["\[Psi]", "1"], "\[Prime]",
           MultilineFunction->None], "[", "t", "]"}]}]}]},
      {
       RowBox[{
        RowBox[{
         RowBox[{"Sin", "[", 
          RowBox[{
           SubscriptBox["\[Phi]", "1"], "[", "t", "]"}], "]"}], " ", 
         RowBox[{
          SuperscriptBox[
           SubscriptBox["\[Theta]", "1"], "\[Prime]",
           MultilineFunction->None], "[", "t", "]"}]}], "+", 
        RowBox[{
         RowBox[{"Cos", "[", 
          RowBox[{
           SubscriptBox["\[Theta]", "1"], "[", "t", "]"}], "]"}], " ", 
         RowBox[{"Cos", "[", 
          RowBox[{
           SubscriptBox["\[Phi]", "1"], "[", "t", "]"}], "]"}], " ", 
         RowBox[{
          SuperscriptBox[
           SubscriptBox["\[Psi]", "1"], "\[Prime]",
           MultilineFunction->None], "[", "t", "]"}]}]}]}
     },
     GridBoxAlignment->{
      "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}},
        "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}],
    Column], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{3.7104708725346613`*^9, 3.7104710026612525`*^9, 
  3.710471583693778*^9}],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
      {
       RowBox[{
        RowBox[{
         SuperscriptBox[
          SubscriptBox["\[Phi]", "2"], "\[Prime]",
          MultilineFunction->None], "[", "t", "]"}], "+", 
        RowBox[{
         RowBox[{"Sin", "[", 
          RowBox[{
           SubscriptBox["\[Theta]", "2"], "[", "t", "]"}], "]"}], " ", 
         RowBox[{
          SuperscriptBox[
           SubscriptBox["\[Psi]", "2"], "\[Prime]",
           MultilineFunction->None], "[", "t", "]"}]}]}]},
      {
       RowBox[{
        RowBox[{
         RowBox[{"Cos", "[", 
          RowBox[{
           SubscriptBox["\[Phi]", "2"], "[", "t", "]"}], "]"}], " ", 
         RowBox[{
          SuperscriptBox[
           SubscriptBox["\[Theta]", "2"], "\[Prime]",
           MultilineFunction->None], "[", "t", "]"}]}], "-", 
        RowBox[{
         RowBox[{"Cos", "[", 
          RowBox[{
           SubscriptBox["\[Theta]", "2"], "[", "t", "]"}], "]"}], " ", 
         RowBox[{"Sin", "[", 
          RowBox[{
           SubscriptBox["\[Phi]", "2"], "[", "t", "]"}], "]"}], " ", 
         RowBox[{
          SuperscriptBox[
           SubscriptBox["\[Psi]", "2"], "\[Prime]",
           MultilineFunction->None], "[", "t", "]"}]}]}]},
      {
       RowBox[{
        RowBox[{
         RowBox[{"Sin", "[", 
          RowBox[{
           SubscriptBox["\[Phi]", "2"], "[", "t", "]"}], "]"}], " ", 
         RowBox[{
          SuperscriptBox[
           SubscriptBox["\[Theta]", "2"], "\[Prime]",
           MultilineFunction->None], "[", "t", "]"}]}], "+", 
        RowBox[{
         RowBox[{"Cos", "[", 
          RowBox[{
           SubscriptBox["\[Theta]", "2"], "[", "t", "]"}], "]"}], " ", 
         RowBox[{"Cos", "[", 
          RowBox[{
           SubscriptBox["\[Phi]", "2"], "[", "t", "]"}], "]"}], " ", 
         RowBox[{
          SuperscriptBox[
           SubscriptBox["\[Psi]", "2"], "\[Prime]",
           MultilineFunction->None], "[", "t", "]"}]}]}]}
     },
     GridBoxAlignment->{
      "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}},
        "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}],
    Column], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{3.7104708725346613`*^9, 3.7104710026612525`*^9, 
  3.710471583820862*^9}],

Cell[BoxData[
 FormBox[
  TagBox[
   RowBox[{"(", "\[NoBreak]", GridBox[{
      {
       RowBox[{
        SuperscriptBox[
         SubscriptBox["x", "1"], "\[Prime]",
         MultilineFunction->None], "(", "t", ")"}]},
      {
       RowBox[{
        SuperscriptBox[
         SubscriptBox["y", "1"], "\[Prime]",
         MultilineFunction->None], "(", "t", ")"}]},
      {
       RowBox[{
        SuperscriptBox[
         SubscriptBox["z", "1"], "\[Prime]",
         MultilineFunction->None], "(", "t", ")"}]}
     },
     GridBoxAlignment->{
      "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}},
        "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.7]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
   Function[BoxForm`e$, 
    MatrixForm[BoxForm`e$]]], TraditionalForm]], "Output",
 CellChangeTimes->{3.7104708725346613`*^9, 3.7104710026612525`*^9, 
  3.7104715838258653`*^9}],

Cell[BoxData[
 FormBox[
  TagBox[
   RowBox[{"(", "\[NoBreak]", GridBox[{
      {
       RowBox[{
        SuperscriptBox[
         SubscriptBox["x", "2"], "\[Prime]",
         MultilineFunction->None], "(", "t", ")"}]},
      {
       RowBox[{
        SuperscriptBox[
         SubscriptBox["y", "2"], "\[Prime]",
         MultilineFunction->None], "(", "t", ")"}]},
      {
       RowBox[{
        SuperscriptBox[
         SubscriptBox["z", "2"], "\[Prime]",
         MultilineFunction->None], "(", "t", ")"}]}
     },
     GridBoxAlignment->{
      "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}},
        "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.7]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
   Function[BoxForm`e$, 
    MatrixForm[BoxForm`e$]]], TraditionalForm]], "Output",
 CellChangeTimes->{3.7104708725346613`*^9, 3.7104710026612525`*^9, 
  3.710471583831871*^9}]
}, Open  ]],

Cell[" ", "Text",
 Editable->False,
 Selectable->False,
 CellFrame->{{0, 0}, {0, 2}},
 ShowCellBracket->False,
 CellMargins->{{0, 0}, {1, 1}},
 CellElementSpacings->{"CellMinHeight"->1},
 CellFrameMargins->0,
 CellFrameColor->RGBColor[0, 0, 1],
 CellSize->{Inherited, 4}],

Cell[BoxData[{
 RowBox[{
  SubscriptBox["X", "p"], "=", 
  RowBox[{
   RowBox[{"(", GridBox[{
      {
       RowBox[{
        SubscriptBox["x", "1"], "[", "t", "]"}]},
      {
       RowBox[{
        SubscriptBox["y", "1"], "[", "t", "]"}]},
      {
       RowBox[{
        SubscriptBox["z", "1"], "[", "t", "]"}]}
     }], ")"}], "+", 
   TagBox[
    RowBox[{
     SubscriptBox["l", "1"], 
     RowBox[{"(", "\[NoBreak]", 
      TagBox[GridBox[{
         {
          RowBox[{
           RowBox[{"Sin", "[", 
            RowBox[{"\[Beta]", "[", "t", "]"}], "]"}], " ", 
           RowBox[{"Cos", "[", 
            RowBox[{"\[Gamma]", "[", "t", "]"}], "]"}]}]},
         {
          RowBox[{
           RowBox[{"Sin", "[", 
            RowBox[{"\[Beta]", "[", "t", "]"}], "]"}], " ", 
           RowBox[{"Sin", "[", 
            RowBox[{"\[Gamma]", "[", "t", "]"}], "]"}]}]},
         {
          RowBox[{"-", 
           RowBox[{"Cos", "[", 
            RowBox[{"\[Beta]", "[", "t", "]"}], "]"}]}]}
        },
        GridBoxAlignment->{
         "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, 
          "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
        GridBoxSpacings->{"Columns" -> {
            Offset[0.27999999999999997`], {
             Offset[0.5599999999999999]}, 
            Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
            Offset[0.2], {
             Offset[0.4]}, 
            Offset[0.2]}, "RowsIndexed" -> {}}],
       Column], "\[NoBreak]", ")"}]}],
    Function[BoxForm`e$, 
     MatrixForm[BoxForm`e$]]]}]}], "\n", 
 RowBox[{"(", 
  RowBox[{
   RowBox[{
    RowBox[{"when", " ", "\[Beta]"}], "=", "0"}], ",", " ", 
   RowBox[{
    RowBox[{"and", " ", "\[Gamma]"}], "=", 
    RowBox[{
     RowBox[{"0", " ", "then", " ", 
      SubscriptBox["X", "p"]}], "=", 
     RowBox[{
      RowBox[{
       RowBox[{"(", GridBox[{
          {"0"},
          {"0"},
          {
           RowBox[{"-", 
            SubscriptBox["l", "1"]}]}
         }], ")"}], ".", " ", "it"}], " ", "is", " ", "the", " ", 
      "equlibrium", " ", "state", " ", "of", " ", "the", " ", "pendulum", " ",
       "payload"}]}]}]}], ")"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"0", "\[Degree]"}], "<", "\[Beta]", "<", 
  RowBox[{"180", "\[Degree]"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"-", "180"}], "\[Degree]"}], "<", "\[Gamma]", "<", 
  RowBox[{"180", "\[Degree]"}]}]}], "Input",
 CellChangeTimes->{{3.7104660308376703`*^9, 3.7104660527612047`*^9}, {
   3.7104661629772887`*^9, 3.7104662431094117`*^9}, {3.7104689612231503`*^9, 
   3.7104689742187653`*^9}, 3.7104691312362843`*^9, {3.7104712595143366`*^9, 
   3.7104712647828283`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      SubscriptBox["X", "p"], "=", 
      RowBox[{
       RowBox[{"(", GridBox[{
          {
           RowBox[{
            SubscriptBox["x", "1"], "[", "t", "]"}]},
          {
           RowBox[{
            SubscriptBox["y", "1"], "[", "t", "]"}]},
          {
           RowBox[{
            SubscriptBox["z", "1"], "[", "t", "]"}]}
         }], ")"}], "+", 
       TagBox[
        RowBox[{
         SubscriptBox["l", "1"], 
         RowBox[{"(", "\[NoBreak]", 
          TagBox[GridBox[{
             {
              RowBox[{
               RowBox[{"Sin", "[", 
                RowBox[{"\[Beta]", "[", "t", "]"}], "]"}], " ", 
               RowBox[{"Cos", "[", 
                RowBox[{"\[Gamma]", "[", "t", "]"}], "]"}]}]},
             {
              RowBox[{
               RowBox[{"Sin", "[", 
                RowBox[{"\[Beta]", "[", "t", "]"}], "]"}], " ", 
               RowBox[{"Sin", "[", 
                RowBox[{"\[Gamma]", "[", "t", "]"}], "]"}]}]},
             {
              RowBox[{"-", 
               RowBox[{"Cos", "[", 
                RowBox[{"\[Beta]", "[", "t", "]"}], "]"}]}]}
            },
            
            GridBoxAlignment->{
             "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, 
              "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
            GridBoxSpacings->{"Columns" -> {
                Offset[0.27999999999999997`], {
                 Offset[0.5599999999999999]}, 
                Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
                Offset[0.2], {
                 Offset[0.4]}, 
                Offset[0.2]}, "RowsIndexed" -> {}}],
           Column], "\[NoBreak]", ")"}]}],
        Function[BoxForm`e$, 
         MatrixForm[BoxForm`e$]]]}]}], ")"}], "//", "MatrixForm"}], "//", 
   "TraditionalForm"}]}]], "Input",
 CellChangeTimes->{{3.7104672519488535`*^9, 3.7104672520939493`*^9}, {
  3.710468992892144*^9, 3.710469006058874*^9}, {3.710469144849307*^9, 
  3.7104691486418223`*^9}, {3.710469216424762*^9, 3.710469222975104*^9}}],

Cell[BoxData[
 FormBox[
  TagBox[
   RowBox[{"(", "\[NoBreak]", GridBox[{
      {
       RowBox[{
        RowBox[{
         SubscriptBox["l", "1"], " ", 
         RowBox[{"sin", "(", 
          RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
         RowBox[{"cos", "(", 
          RowBox[{"\[Gamma]", "(", "t", ")"}], ")"}]}], "+", 
        RowBox[{
         SubscriptBox["x", "1"], "(", "t", ")"}]}]},
      {
       RowBox[{
        RowBox[{
         SubscriptBox["l", "1"], " ", 
         RowBox[{"sin", "(", 
          RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
         RowBox[{"sin", "(", 
          RowBox[{"\[Gamma]", "(", "t", ")"}], ")"}]}], "+", 
        RowBox[{
         SubscriptBox["y", "1"], "(", "t", ")"}]}]},
      {
       RowBox[{
        RowBox[{
         SubscriptBox["z", "1"], "(", "t", ")"}], "-", 
        RowBox[{
         SubscriptBox["l", "1"], " ", 
         RowBox[{"cos", "(", 
          RowBox[{"\[Beta]", "(", "t", ")"}], ")"}]}]}]}
     },
     GridBoxAlignment->{
      "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}},
        "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.7]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
   Function[BoxForm`e$, 
    MatrixForm[BoxForm`e$]]], TraditionalForm]], "Output",
 CellChangeTimes->{{3.7104689938777976`*^9, 3.710469006718311*^9}, {
   3.7104691460220857`*^9, 3.710469149370309*^9}, 3.710469223543483*^9, 
   3.7104716289858074`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      SubscriptBox["V", "tr"], "==", 
      RowBox[{"D", "[", 
       RowBox[{
        SubscriptBox["X", "p"], ",", "t"}], "]"}]}], "//", "Simplify"}], 
    ")"}], "//", "MatrixForm"}], "//", "TraditionalForm"}]], "Input",
 CellChangeTimes->{{3.7104691742818203`*^9, 3.7104692039184694`*^9}, {
  3.7104696336157866`*^9, 3.7104696397828712`*^9}, {3.7104700213295717`*^9, 
  3.7104700229636555`*^9}}],

Cell[BoxData[
 FormBox[
  TagBox[
   RowBox[{
    SubscriptBox["V", "tr"], "\[LongEqual]", 
    RowBox[{"(", "\[NoBreak]", GridBox[{
       {
        RowBox[{
         RowBox[{
          SubscriptBox["l", "1"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             RowBox[{"cos", "(", 
              RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
             RowBox[{"cos", "(", 
              RowBox[{"\[Gamma]", "(", "t", ")"}], ")"}], " ", 
             RowBox[{
              SuperscriptBox["\[Beta]", "\[Prime]",
               MultilineFunction->None], "(", "t", ")"}]}], "-", 
            RowBox[{
             RowBox[{"sin", "(", 
              RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
             RowBox[{"sin", "(", 
              RowBox[{"\[Gamma]", "(", "t", ")"}], ")"}], " ", 
             RowBox[{
              SuperscriptBox["\[Gamma]", "\[Prime]",
               MultilineFunction->None], "(", "t", ")"}]}]}], ")"}]}], "+", 
         RowBox[{
          SuperscriptBox[
           SubscriptBox["x", "1"], "\[Prime]",
           MultilineFunction->None], "(", "t", ")"}]}]},
       {
        RowBox[{
         RowBox[{
          SubscriptBox["l", "1"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             RowBox[{"cos", "(", 
              RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
             RowBox[{"sin", "(", 
              RowBox[{"\[Gamma]", "(", "t", ")"}], ")"}], " ", 
             RowBox[{
              SuperscriptBox["\[Beta]", "\[Prime]",
               MultilineFunction->None], "(", "t", ")"}]}], "+", 
            RowBox[{
             RowBox[{"cos", "(", 
              RowBox[{"\[Gamma]", "(", "t", ")"}], ")"}], " ", 
             RowBox[{"sin", "(", 
              RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
             RowBox[{
              SuperscriptBox["\[Gamma]", "\[Prime]",
               MultilineFunction->None], "(", "t", ")"}]}]}], ")"}]}], "+", 
         RowBox[{
          SuperscriptBox[
           SubscriptBox["y", "1"], "\[Prime]",
           MultilineFunction->None], "(", "t", ")"}]}]},
       {
        RowBox[{
         RowBox[{
          RowBox[{"sin", "(", 
           RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
          SubscriptBox["l", "1"], " ", 
          RowBox[{
           SuperscriptBox["\[Beta]", "\[Prime]",
            MultilineFunction->None], "(", "t", ")"}]}], "+", 
         RowBox[{
          SuperscriptBox[
           SubscriptBox["z", "1"], "\[Prime]",
           MultilineFunction->None], "(", "t", ")"}]}]}
      },
      GridBoxAlignment->{
       "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, 
        "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
      GridBoxSpacings->{"Columns" -> {
          Offset[0.27999999999999997`], {
           Offset[0.7]}, 
          Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
          Offset[0.2], {
           Offset[0.4]}, 
          Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}]}],
   Function[BoxForm`e$, 
    MatrixForm[BoxForm`e$]]], TraditionalForm]], "Output",
 CellChangeTimes->{{3.7104691862817755`*^9, 3.710469226373355*^9}, 
   3.7104696455817175`*^9, 3.7104700240623827`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"D", "[", 
     RowBox[{
      RowBox[{
       SubscriptBox["X", "p"], "//", "Flatten"}], ",", "t"}], "]"}], ".", 
    RowBox[{"D", "[", 
     RowBox[{
      RowBox[{
       SubscriptBox["X", "p"], "//", "Flatten"}], ",", "t"}], "]"}]}], "//", 
   "MatrixForm"}], "//", "TraditionalForm"}]], "Input",
 CellChangeTimes->{{3.710469786532977*^9, 3.71046978668808*^9}},
 Background->GrayLevel[0.85]],

Cell[BoxData[
 FormBox[
  TagBox[
   RowBox[{
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        SubscriptBox["l", "1"], " ", 
        RowBox[{
         SuperscriptBox["\[Beta]", "\[Prime]",
          MultilineFunction->None], "(", "t", ")"}], " ", 
        RowBox[{"cos", "(", 
         RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
        RowBox[{"cos", "(", 
         RowBox[{"\[Gamma]", "(", "t", ")"}], ")"}]}], "-", 
       RowBox[{
        SubscriptBox["l", "1"], " ", 
        RowBox[{"sin", "(", 
         RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", "\[Prime]",
          MultilineFunction->None], "(", "t", ")"}], " ", 
        RowBox[{"sin", "(", 
         RowBox[{"\[Gamma]", "(", "t", ")"}], ")"}]}], "+", 
       RowBox[{
        SuperscriptBox[
         SubscriptBox["x", "1"], "\[Prime]",
         MultilineFunction->None], "(", "t", ")"}]}], ")"}], "2"], "+", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        SubscriptBox["l", "1"], " ", 
        RowBox[{
         SuperscriptBox["\[Beta]", "\[Prime]",
          MultilineFunction->None], "(", "t", ")"}], " ", 
        RowBox[{"cos", "(", 
         RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
        RowBox[{"sin", "(", 
         RowBox[{"\[Gamma]", "(", "t", ")"}], ")"}]}], "+", 
       RowBox[{
        SubscriptBox["l", "1"], " ", 
        RowBox[{"sin", "(", 
         RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", "\[Prime]",
          MultilineFunction->None], "(", "t", ")"}], " ", 
        RowBox[{"cos", "(", 
         RowBox[{"\[Gamma]", "(", "t", ")"}], ")"}]}], "+", 
       RowBox[{
        SuperscriptBox[
         SubscriptBox["y", "1"], "\[Prime]",
         MultilineFunction->None], "(", "t", ")"}]}], ")"}], "2"], "+", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        SubscriptBox["l", "1"], " ", 
        RowBox[{
         SuperscriptBox["\[Beta]", "\[Prime]",
          MultilineFunction->None], "(", "t", ")"}], " ", 
        RowBox[{"sin", "(", 
         RowBox[{"\[Beta]", "(", "t", ")"}], ")"}]}], "+", 
       RowBox[{
        SuperscriptBox[
         SubscriptBox["z", "1"], "\[Prime]",
         MultilineFunction->None], "(", "t", ")"}]}], ")"}], "2"]}],
   Function[BoxForm`e$, 
    MatrixForm[BoxForm`e$]]], TraditionalForm]], "Output",
 CellChangeTimes->{3.710469787300486*^9},
 Background->GrayLevel[0.85]]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"(", 
    RowBox[{"VpVp", "=", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"D", "[", 
         RowBox[{
          RowBox[{
           SubscriptBox["X", "p"], "//", "Flatten"}], ",", "t"}], "]"}], ".", 
        RowBox[{"D", "[", 
         RowBox[{
          RowBox[{
           SubscriptBox["X", "p"], "//", "Flatten"}], ",", "t"}], "]"}]}], "//",
        "Expand"}], "//", "Simplify"}]}], ")"}], "//", "MatrixForm"}], "//", 
  "TraditionalForm"}]], "Input",
 CellChangeTimes->{{3.7104711282793303`*^9, 3.710471129870385*^9}},
 Background->RGBColor[1, 1, 0]],

Cell[BoxData[
 FormBox[
  TagBox[
   RowBox[{
    RowBox[{
     SubsuperscriptBox["l", "1", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{
         SuperscriptBox["\[Beta]", "\[Prime]",
          MultilineFunction->None], "(", "t", ")"}], "2"], "+", 
       RowBox[{
        RowBox[{
         SuperscriptBox["sin", "2"], "(", 
         RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
        SuperscriptBox[
         RowBox[{
          SuperscriptBox["\[Gamma]", "\[Prime]",
           MultilineFunction->None], "(", "t", ")"}], "2"]}]}], ")"}]}], "+", 
    RowBox[{"2", " ", 
     SubscriptBox["l", "1"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{"sin", "(", 
         RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", "\[Prime]",
          MultilineFunction->None], "(", "t", ")"}], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"cos", "(", 
            RowBox[{"\[Gamma]", "(", "t", ")"}], ")"}], " ", 
           RowBox[{
            SuperscriptBox[
             SubscriptBox["y", "1"], "\[Prime]",
             MultilineFunction->None], "(", "t", ")"}]}], "-", 
          RowBox[{
           RowBox[{"sin", "(", 
            RowBox[{"\[Gamma]", "(", "t", ")"}], ")"}], " ", 
           RowBox[{
            SuperscriptBox[
             SubscriptBox["x", "1"], "\[Prime]",
             MultilineFunction->None], "(", "t", ")"}]}]}], ")"}]}], "+", 
       RowBox[{
        RowBox[{
         SuperscriptBox["\[Beta]", "\[Prime]",
          MultilineFunction->None], "(", "t", ")"}], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"cos", "(", 
            RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
           RowBox[{"cos", "(", 
            RowBox[{"\[Gamma]", "(", "t", ")"}], ")"}], " ", 
           RowBox[{
            SuperscriptBox[
             SubscriptBox["x", "1"], "\[Prime]",
             MultilineFunction->None], "(", "t", ")"}]}], "+", 
          RowBox[{
           RowBox[{"cos", "(", 
            RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
           RowBox[{"sin", "(", 
            RowBox[{"\[Gamma]", "(", "t", ")"}], ")"}], " ", 
           RowBox[{
            SuperscriptBox[
             SubscriptBox["y", "1"], "\[Prime]",
             MultilineFunction->None], "(", "t", ")"}]}], "+", 
          RowBox[{
           RowBox[{"sin", "(", 
            RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
           RowBox[{
            SuperscriptBox[
             SubscriptBox["z", "1"], "\[Prime]",
             MultilineFunction->None], "(", "t", ")"}]}]}], ")"}]}]}], 
      ")"}]}], "+", 
    SuperscriptBox[
     RowBox[{
      SuperscriptBox[
       SubscriptBox["x", "1"], "\[Prime]",
       MultilineFunction->None], "(", "t", ")"}], "2"], "+", 
    SuperscriptBox[
     RowBox[{
      SuperscriptBox[
       SubscriptBox["y", "1"], "\[Prime]",
       MultilineFunction->None], "(", "t", ")"}], "2"], "+", 
    SuperscriptBox[
     RowBox[{
      SuperscriptBox[
       SubscriptBox["z", "1"], "\[Prime]",
       MultilineFunction->None], "(", "t", ")"}], "2"]}],
   Function[BoxForm`e$, 
    MatrixForm[BoxForm`e$]]], TraditionalForm]], "Output",
 CellChangeTimes->{3.7104711319507637`*^9, 3.710471638713254*^9},
 Background->RGBColor[1, 1, 0]]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     SuperscriptBox[
      SubscriptBox["V", "p"], "2"], "==", "VpVp"}], ")"}], "//", 
   "MatrixForm"}], "//", "TraditionalForm"}]], "Input",
 CellChangeTimes->{
  3.7104696206842117`*^9, {3.71046970264536*^9, 3.7104697327172976`*^9}, {
   3.7104698458154373`*^9, 3.7104698476546564`*^9}, 3.7104711448012843`*^9}],

Cell[BoxData[
 FormBox[
  TagBox[
   RowBox[{
    SuperscriptBox[
     RowBox[{"(", 
      SubscriptBox[
       RowBox[{"g", " ", 
        SubscriptBox["m", "1"], " ", 
        RowBox[{
         SubscriptBox["z", "1"], "(", "t", ")"}]}], "p"], ")"}], "2"], 
    "\[LongEqual]", 
    RowBox[{
     RowBox[{
      SubsuperscriptBox["l", "1", "2"], " ", 
      RowBox[{"(", 
       RowBox[{
        SuperscriptBox[
         RowBox[{
          SuperscriptBox["\[Beta]", "\[Prime]",
           MultilineFunction->None], "(", "t", ")"}], "2"], "+", 
        RowBox[{
         RowBox[{
          SuperscriptBox["sin", "2"], "(", 
          RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
         SuperscriptBox[
          RowBox[{
           SuperscriptBox["\[Gamma]", "\[Prime]",
            MultilineFunction->None], "(", "t", ")"}], "2"]}]}], ")"}]}], "+", 
     RowBox[{"2", " ", 
      SubscriptBox["l", "1"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"sin", "(", 
          RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
         RowBox[{
          SuperscriptBox["\[Gamma]", "\[Prime]",
           MultilineFunction->None], "(", "t", ")"}], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"cos", "(", 
             RowBox[{"\[Gamma]", "(", "t", ")"}], ")"}], " ", 
            RowBox[{
             SuperscriptBox[
              SubscriptBox["y", "1"], "\[Prime]",
              MultilineFunction->None], "(", "t", ")"}]}], "-", 
           RowBox[{
            RowBox[{"sin", "(", 
             RowBox[{"\[Gamma]", "(", "t", ")"}], ")"}], " ", 
            RowBox[{
             SuperscriptBox[
              SubscriptBox["x", "1"], "\[Prime]",
              MultilineFunction->None], "(", "t", ")"}]}]}], ")"}]}], "+", 
        RowBox[{
         RowBox[{
          SuperscriptBox["\[Beta]", "\[Prime]",
           MultilineFunction->None], "(", "t", ")"}], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"cos", "(", 
             RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
            RowBox[{"cos", "(", 
             RowBox[{"\[Gamma]", "(", "t", ")"}], ")"}], " ", 
            RowBox[{
             SuperscriptBox[
              SubscriptBox["x", "1"], "\[Prime]",
              MultilineFunction->None], "(", "t", ")"}]}], "+", 
           RowBox[{
            RowBox[{"cos", "(", 
             RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
            RowBox[{"sin", "(", 
             RowBox[{"\[Gamma]", "(", "t", ")"}], ")"}], " ", 
            RowBox[{
             SuperscriptBox[
              SubscriptBox["y", "1"], "\[Prime]",
              MultilineFunction->None], "(", "t", ")"}]}], "+", 
           RowBox[{
            RowBox[{"sin", "(", 
             RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
            RowBox[{
             SuperscriptBox[
              SubscriptBox["z", "1"], "\[Prime]",
              MultilineFunction->None], "(", "t", ")"}]}]}], ")"}]}]}], 
       ")"}]}], "+", 
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["x", "1"], "\[Prime]",
        MultilineFunction->None], "(", "t", ")"}], "2"], "+", 
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["y", "1"], "\[Prime]",
        MultilineFunction->None], "(", "t", ")"}], "2"], "+", 
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["z", "1"], "\[Prime]",
        MultilineFunction->None], "(", "t", ")"}], "2"]}]}],
   Function[BoxForm`e$, 
    MatrixForm[BoxForm`e$]]], TraditionalForm]], "Output",
 CellChangeTimes->{{3.7104697212026625`*^9, 3.7104697332766733`*^9}, 
   3.710469848471196*^9, 3.7104711460371046`*^9}]
}, Open  ]],

Cell[" ", "Text",
 Editable->False,
 Selectable->False,
 CellFrame->{{0, 0}, {0, 2}},
 ShowCellBracket->False,
 CellMargins->{{0, 0}, {1, 1}},
 CellElementSpacings->{"CellMinHeight"->1},
 CellFrameMargins->0,
 CellFrameColor->RGBColor[0, 0, 1],
 CellSize->{Inherited, 4}],

Cell["enrgies :", "Text",
 CellChangeTimes->{{3.7104274685361333`*^9, 3.710427481059847*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"x1dotSqr", "=", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     RowBox[{"Transpose", "[", "X1dot", "]"}], ".", "X1dot"}], ")"}], "[", 
   RowBox[{"[", 
    RowBox[{"1", ",", "1"}], "]"}], "]"}]}], "\n", 
 RowBox[{"x2dotSqr", "=", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     RowBox[{"Transpose", "[", "X2dot", "]"}], ".", "X2dot"}], ")"}], "[", 
   RowBox[{"[", 
    RowBox[{"1", ",", "1"}], "]"}], "]"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"(", 
   RowBox[{"T", "=", 
    RowBox[{
     RowBox[{
      FractionBox["1", "2"], 
      SubscriptBox["m", "1"], "x1dotSqr"}], "+", 
     RowBox[{
      FractionBox["1", "2"], 
      RowBox[{
       SubscriptBox["\[Omega]", "1"], ".", "Imat", " ", ".", 
       SubscriptBox["\[Omega]", "1"]}]}], "+", 
     RowBox[{
      FractionBox["1", "2"], 
      SubscriptBox["m", "2"], "x2dotSqr"}], "+", 
     RowBox[{
      FractionBox["1", "2"], 
      RowBox[{
       SubscriptBox["\[Omega]", "2"], ".", "Imat", " ", ".", 
       SubscriptBox["\[Omega]", "2"]}]}], "+", 
     RowBox[{
      FractionBox["1", "2"], 
      SubscriptBox["m", "p"], "VpVp"}]}]}], ")"}], 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"/.", 
     RowBox[{"Cos", "\[Rule]", "C"}]}], "/.", 
    RowBox[{"Sin", "\[Rule]", "S"}]}], "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{"V", "=", 
  RowBox[{
   RowBox[{
    SubscriptBox["m", "1"], "g", 
    RowBox[{"(", 
     RowBox[{
      SubscriptBox["z", "1"], "[", "t", "]"}], ")"}]}], "+", 
   RowBox[{
    SubscriptBox["m", "2"], "g", 
    RowBox[{"(", 
     RowBox[{
      SubscriptBox["z", "2"], "[", "t", "]"}], ")"}]}], "+", 
   RowBox[{
    SubscriptBox["m", "p"], "g", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       SubscriptBox["z", "1"], "[", "t", "]"}], "-", 
      RowBox[{
       SubscriptBox["l", "1"], 
       RowBox[{"Cos", "[", 
        RowBox[{"\[Beta]", "[", "t", "]"}], "]"}]}]}], 
     ")"}]}]}]}], "\[IndentingNewLine]", 
 RowBox[{"L", "=", 
  RowBox[{"T", "-", "V"}]}]}], "Input",
 CellChangeTimes->{{3.7098893085949383`*^9, 3.709889383514906*^9}, {
   3.709912694315194*^9, 3.70991273810653*^9}, {3.7099146124074802`*^9, 
   3.70991461726021*^9}, 3.7102551069304085`*^9, {3.7103507891102843`*^9, 
   3.710350833293151*^9}, 3.710350878367876*^9, {3.7104710174520593`*^9, 
   3.7104710587284293`*^9}, {3.7104711920836306`*^9, 
   3.7104712331808777`*^9}, {3.7104712705666633`*^9, 3.710471280884234*^9}}],

Cell[BoxData[
 RowBox[{
  SuperscriptBox[
   RowBox[{
    SuperscriptBox[
     SubscriptBox["x", "1"], "\[Prime]",
     MultilineFunction->None], "[", "t", "]"}], "2"], "+", 
  SuperscriptBox[
   RowBox[{
    SuperscriptBox[
     SubscriptBox["y", "1"], "\[Prime]",
     MultilineFunction->None], "[", "t", "]"}], "2"], "+", 
  SuperscriptBox[
   RowBox[{
    SuperscriptBox[
     SubscriptBox["z", "1"], "\[Prime]",
     MultilineFunction->None], "[", "t", "]"}], "2"]}]], "Output",
 CellChangeTimes->{3.710471649595789*^9}],

Cell[BoxData[
 RowBox[{
  SuperscriptBox[
   RowBox[{
    SuperscriptBox[
     SubscriptBox["x", "2"], "\[Prime]",
     MultilineFunction->None], "[", "t", "]"}], "2"], "+", 
  SuperscriptBox[
   RowBox[{
    SuperscriptBox[
     SubscriptBox["y", "2"], "\[Prime]",
     MultilineFunction->None], "[", "t", "]"}], "2"], "+", 
  SuperscriptBox[
   RowBox[{
    SuperscriptBox[
     SubscriptBox["z", "2"], "\[Prime]",
     MultilineFunction->None], "[", "t", "]"}], "2"]}]], "Output",
 CellChangeTimes->{3.710471649598792*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{
   FractionBox["1", "2"], " ", 
   SubscriptBox["m", "1"], " ", 
   RowBox[{"(", 
    RowBox[{
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["x", "1"], "\[Prime]",
        MultilineFunction->None], "[", "t", "]"}], "2"], "+", 
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["y", "1"], "\[Prime]",
        MultilineFunction->None], "[", "t", "]"}], "2"], "+", 
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["z", "1"], "\[Prime]",
        MultilineFunction->None], "[", "t", "]"}], "2"]}], ")"}]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", 
   SubscriptBox["m", "p"], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      SubsuperscriptBox["l", "1", "2"], " ", 
      RowBox[{"(", 
       RowBox[{
        SuperscriptBox[
         RowBox[{
          SuperscriptBox["\[Beta]", "\[Prime]",
           MultilineFunction->None], "[", "t", "]"}], "2"], "+", 
        RowBox[{
         SuperscriptBox[
          RowBox[{"Sin", "[", 
           RowBox[{"\[Beta]", "[", "t", "]"}], "]"}], "2"], " ", 
         SuperscriptBox[
          RowBox[{
           SuperscriptBox["\[Gamma]", "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}], "2"]}]}], ")"}]}], "+", 
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["x", "1"], "\[Prime]",
        MultilineFunction->None], "[", "t", "]"}], "2"], "+", 
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["y", "1"], "\[Prime]",
        MultilineFunction->None], "[", "t", "]"}], "2"], "+", 
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["z", "1"], "\[Prime]",
        MultilineFunction->None], "[", "t", "]"}], "2"], "+", 
     RowBox[{"2", " ", 
      SubscriptBox["l", "1"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"Sin", "[", 
          RowBox[{"\[Beta]", "[", "t", "]"}], "]"}], " ", 
         RowBox[{
          SuperscriptBox["\[Gamma]", "\[Prime]",
           MultilineFunction->None], "[", "t", "]"}], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"-", 
             RowBox[{"Sin", "[", 
              RowBox[{"\[Gamma]", "[", "t", "]"}], "]"}]}], " ", 
            RowBox[{
             SuperscriptBox[
              SubscriptBox["x", "1"], "\[Prime]",
              MultilineFunction->None], "[", "t", "]"}]}], "+", 
           RowBox[{
            RowBox[{"Cos", "[", 
             RowBox[{"\[Gamma]", "[", "t", "]"}], "]"}], " ", 
            RowBox[{
             SuperscriptBox[
              SubscriptBox["y", "1"], "\[Prime]",
              MultilineFunction->None], "[", "t", "]"}]}]}], ")"}]}], "+", 
        RowBox[{
         RowBox[{
          SuperscriptBox["\[Beta]", "\[Prime]",
           MultilineFunction->None], "[", "t", "]"}], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"Cos", "[", 
             RowBox[{"\[Beta]", "[", "t", "]"}], "]"}], " ", 
            RowBox[{"Cos", "[", 
             RowBox[{"\[Gamma]", "[", "t", "]"}], "]"}], " ", 
            RowBox[{
             SuperscriptBox[
              SubscriptBox["x", "1"], "\[Prime]",
              MultilineFunction->None], "[", "t", "]"}]}], "+", 
           RowBox[{
            RowBox[{"Cos", "[", 
             RowBox[{"\[Beta]", "[", "t", "]"}], "]"}], " ", 
            RowBox[{"Sin", "[", 
             RowBox[{"\[Gamma]", "[", "t", "]"}], "]"}], " ", 
            RowBox[{
             SuperscriptBox[
              SubscriptBox["y", "1"], "\[Prime]",
              MultilineFunction->None], "[", "t", "]"}]}], "+", 
           RowBox[{
            RowBox[{"Sin", "[", 
             RowBox[{"\[Beta]", "[", "t", "]"}], "]"}], " ", 
            RowBox[{
             SuperscriptBox[
              SubscriptBox["z", "1"], "\[Prime]",
              MultilineFunction->None], "[", "t", "]"}]}]}], ")"}]}]}], 
       ")"}]}]}], ")"}]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", 
   SubscriptBox["m", "2"], " ", 
   RowBox[{"(", 
    RowBox[{
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["x", "2"], "\[Prime]",
        MultilineFunction->None], "[", "t", "]"}], "2"], "+", 
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["y", "2"], "\[Prime]",
        MultilineFunction->None], "[", "t", "]"}], "2"], "+", 
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["z", "2"], "\[Prime]",
        MultilineFunction->None], "[", "t", "]"}], "2"]}], ")"}]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      SubscriptBox["\[ImaginaryI]", "13"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"Sin", "[", 
           RowBox[{
            SubscriptBox["\[Phi]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Theta]", "1"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}], "+", 
         RowBox[{
          RowBox[{"Cos", "[", 
           RowBox[{
            SubscriptBox["\[Theta]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{"Cos", "[", 
           RowBox[{
            SubscriptBox["\[Phi]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Psi]", "1"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}]}], ")"}], "2"]}], "+", 
     RowBox[{
      SubscriptBox["\[ImaginaryI]", "11"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox[
           SubscriptBox["\[Phi]", "1"], "\[Prime]",
           MultilineFunction->None], "[", "t", "]"}], "+", 
         RowBox[{
          RowBox[{"Sin", "[", 
           RowBox[{
            SubscriptBox["\[Theta]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Psi]", "1"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}]}], ")"}], "2"]}], "+", 
     RowBox[{
      SubscriptBox["\[ImaginaryI]", "12"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"Cos", "[", 
           RowBox[{
            SubscriptBox["\[Phi]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Theta]", "1"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}], "-", 
         RowBox[{
          RowBox[{"Cos", "[", 
           RowBox[{
            SubscriptBox["\[Theta]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{"Sin", "[", 
           RowBox[{
            SubscriptBox["\[Phi]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Psi]", "1"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}]}], ")"}], "2"]}]}], 
    ")"}]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      SubscriptBox["\[ImaginaryI]", "13"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"Sin", "[", 
           RowBox[{
            SubscriptBox["\[Phi]", "2"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Theta]", "2"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}], "+", 
         RowBox[{
          RowBox[{"Cos", "[", 
           RowBox[{
            SubscriptBox["\[Theta]", "2"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{"Cos", "[", 
           RowBox[{
            SubscriptBox["\[Phi]", "2"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Psi]", "2"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}]}], ")"}], "2"]}], "+", 
     RowBox[{
      SubscriptBox["\[ImaginaryI]", "11"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox[
           SubscriptBox["\[Phi]", "2"], "\[Prime]",
           MultilineFunction->None], "[", "t", "]"}], "+", 
         RowBox[{
          RowBox[{"Sin", "[", 
           RowBox[{
            SubscriptBox["\[Theta]", "2"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Psi]", "2"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}]}], ")"}], "2"]}], "+", 
     RowBox[{
      SubscriptBox["\[ImaginaryI]", "12"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"Cos", "[", 
           RowBox[{
            SubscriptBox["\[Phi]", "2"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Theta]", "2"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}], "-", 
         RowBox[{
          RowBox[{"Cos", "[", 
           RowBox[{
            SubscriptBox["\[Theta]", "2"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{"Sin", "[", 
           RowBox[{
            SubscriptBox["\[Phi]", "2"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Psi]", "2"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}]}], ")"}], "2"]}]}], 
    ")"}]}]}]], "Output",
 CellChangeTimes->{3.7104716496088047`*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"g", " ", 
   SubscriptBox["m", "1"], " ", 
   RowBox[{
    SubscriptBox["z", "1"], "[", "t", "]"}]}], "+", 
  RowBox[{"g", " ", 
   SubscriptBox["m", "p"], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{"-", 
       RowBox[{"Cos", "[", 
        RowBox[{"\[Beta]", "[", "t", "]"}], "]"}]}], " ", 
      SubscriptBox["l", "1"]}], "+", 
     RowBox[{
      SubscriptBox["z", "1"], "[", "t", "]"}]}], ")"}]}], "+", 
  RowBox[{"g", " ", 
   SubscriptBox["m", "2"], " ", 
   RowBox[{
    SubscriptBox["z", "2"], "[", "t", "]"}]}]}]], "Output",
 CellChangeTimes->{3.7104716496128035`*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"-", "g"}], " ", 
   SubscriptBox["m", "1"], " ", 
   RowBox[{
    SubscriptBox["z", "1"], "[", "t", "]"}]}], "-", 
  RowBox[{"g", " ", 
   SubscriptBox["m", "p"], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{"-", 
       RowBox[{"Cos", "[", 
        RowBox[{"\[Beta]", "[", "t", "]"}], "]"}]}], " ", 
      SubscriptBox["l", "1"]}], "+", 
     RowBox[{
      SubscriptBox["z", "1"], "[", "t", "]"}]}], ")"}]}], "-", 
  RowBox[{"g", " ", 
   SubscriptBox["m", "2"], " ", 
   RowBox[{
    SubscriptBox["z", "2"], "[", "t", "]"}]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", 
   SubscriptBox["m", "1"], " ", 
   RowBox[{"(", 
    RowBox[{
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["x", "1"], "\[Prime]",
        MultilineFunction->None], "[", "t", "]"}], "2"], "+", 
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["y", "1"], "\[Prime]",
        MultilineFunction->None], "[", "t", "]"}], "2"], "+", 
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["z", "1"], "\[Prime]",
        MultilineFunction->None], "[", "t", "]"}], "2"]}], ")"}]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", 
   SubscriptBox["m", "p"], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      SubsuperscriptBox["l", "1", "2"], " ", 
      RowBox[{"(", 
       RowBox[{
        SuperscriptBox[
         RowBox[{
          SuperscriptBox["\[Beta]", "\[Prime]",
           MultilineFunction->None], "[", "t", "]"}], "2"], "+", 
        RowBox[{
         SuperscriptBox[
          RowBox[{"Sin", "[", 
           RowBox[{"\[Beta]", "[", "t", "]"}], "]"}], "2"], " ", 
         SuperscriptBox[
          RowBox[{
           SuperscriptBox["\[Gamma]", "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}], "2"]}]}], ")"}]}], "+", 
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["x", "1"], "\[Prime]",
        MultilineFunction->None], "[", "t", "]"}], "2"], "+", 
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["y", "1"], "\[Prime]",
        MultilineFunction->None], "[", "t", "]"}], "2"], "+", 
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["z", "1"], "\[Prime]",
        MultilineFunction->None], "[", "t", "]"}], "2"], "+", 
     RowBox[{"2", " ", 
      SubscriptBox["l", "1"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"Sin", "[", 
          RowBox[{"\[Beta]", "[", "t", "]"}], "]"}], " ", 
         RowBox[{
          SuperscriptBox["\[Gamma]", "\[Prime]",
           MultilineFunction->None], "[", "t", "]"}], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"-", 
             RowBox[{"Sin", "[", 
              RowBox[{"\[Gamma]", "[", "t", "]"}], "]"}]}], " ", 
            RowBox[{
             SuperscriptBox[
              SubscriptBox["x", "1"], "\[Prime]",
              MultilineFunction->None], "[", "t", "]"}]}], "+", 
           RowBox[{
            RowBox[{"Cos", "[", 
             RowBox[{"\[Gamma]", "[", "t", "]"}], "]"}], " ", 
            RowBox[{
             SuperscriptBox[
              SubscriptBox["y", "1"], "\[Prime]",
              MultilineFunction->None], "[", "t", "]"}]}]}], ")"}]}], "+", 
        RowBox[{
         RowBox[{
          SuperscriptBox["\[Beta]", "\[Prime]",
           MultilineFunction->None], "[", "t", "]"}], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"Cos", "[", 
             RowBox[{"\[Beta]", "[", "t", "]"}], "]"}], " ", 
            RowBox[{"Cos", "[", 
             RowBox[{"\[Gamma]", "[", "t", "]"}], "]"}], " ", 
            RowBox[{
             SuperscriptBox[
              SubscriptBox["x", "1"], "\[Prime]",
              MultilineFunction->None], "[", "t", "]"}]}], "+", 
           RowBox[{
            RowBox[{"Cos", "[", 
             RowBox[{"\[Beta]", "[", "t", "]"}], "]"}], " ", 
            RowBox[{"Sin", "[", 
             RowBox[{"\[Gamma]", "[", "t", "]"}], "]"}], " ", 
            RowBox[{
             SuperscriptBox[
              SubscriptBox["y", "1"], "\[Prime]",
              MultilineFunction->None], "[", "t", "]"}]}], "+", 
           RowBox[{
            RowBox[{"Sin", "[", 
             RowBox[{"\[Beta]", "[", "t", "]"}], "]"}], " ", 
            RowBox[{
             SuperscriptBox[
              SubscriptBox["z", "1"], "\[Prime]",
              MultilineFunction->None], "[", "t", "]"}]}]}], ")"}]}]}], 
       ")"}]}]}], ")"}]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", 
   SubscriptBox["m", "2"], " ", 
   RowBox[{"(", 
    RowBox[{
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["x", "2"], "\[Prime]",
        MultilineFunction->None], "[", "t", "]"}], "2"], "+", 
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["y", "2"], "\[Prime]",
        MultilineFunction->None], "[", "t", "]"}], "2"], "+", 
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["z", "2"], "\[Prime]",
        MultilineFunction->None], "[", "t", "]"}], "2"]}], ")"}]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      SubscriptBox["\[ImaginaryI]", "13"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"Sin", "[", 
           RowBox[{
            SubscriptBox["\[Phi]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Theta]", "1"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}], "+", 
         RowBox[{
          RowBox[{"Cos", "[", 
           RowBox[{
            SubscriptBox["\[Theta]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{"Cos", "[", 
           RowBox[{
            SubscriptBox["\[Phi]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Psi]", "1"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}]}], ")"}], "2"]}], "+", 
     RowBox[{
      SubscriptBox["\[ImaginaryI]", "11"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox[
           SubscriptBox["\[Phi]", "1"], "\[Prime]",
           MultilineFunction->None], "[", "t", "]"}], "+", 
         RowBox[{
          RowBox[{"Sin", "[", 
           RowBox[{
            SubscriptBox["\[Theta]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Psi]", "1"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}]}], ")"}], "2"]}], "+", 
     RowBox[{
      SubscriptBox["\[ImaginaryI]", "12"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"Cos", "[", 
           RowBox[{
            SubscriptBox["\[Phi]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Theta]", "1"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}], "-", 
         RowBox[{
          RowBox[{"Cos", "[", 
           RowBox[{
            SubscriptBox["\[Theta]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{"Sin", "[", 
           RowBox[{
            SubscriptBox["\[Phi]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Psi]", "1"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}]}], ")"}], "2"]}]}], 
    ")"}]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      SubscriptBox["\[ImaginaryI]", "13"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"Sin", "[", 
           RowBox[{
            SubscriptBox["\[Phi]", "2"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Theta]", "2"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}], "+", 
         RowBox[{
          RowBox[{"Cos", "[", 
           RowBox[{
            SubscriptBox["\[Theta]", "2"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{"Cos", "[", 
           RowBox[{
            SubscriptBox["\[Phi]", "2"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Psi]", "2"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}]}], ")"}], "2"]}], "+", 
     RowBox[{
      SubscriptBox["\[ImaginaryI]", "11"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox[
           SubscriptBox["\[Phi]", "2"], "\[Prime]",
           MultilineFunction->None], "[", "t", "]"}], "+", 
         RowBox[{
          RowBox[{"Sin", "[", 
           RowBox[{
            SubscriptBox["\[Theta]", "2"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Psi]", "2"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}]}], ")"}], "2"]}], "+", 
     RowBox[{
      SubscriptBox["\[ImaginaryI]", "12"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"Cos", "[", 
           RowBox[{
            SubscriptBox["\[Phi]", "2"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Theta]", "2"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}], "-", 
         RowBox[{
          RowBox[{"Cos", "[", 
           RowBox[{
            SubscriptBox["\[Theta]", "2"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{"Sin", "[", 
           RowBox[{
            SubscriptBox["\[Phi]", "2"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Psi]", "2"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}]}], ")"}], "2"]}]}], 
    ")"}]}]}]], "Output",
 CellChangeTimes->{3.7104716496278114`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"(", 
  RowBox[{"T", "=", 
   RowBox[{
    RowBox[{
     FractionBox["1", "2"], 
     SubscriptBox["m", "1"], "x1dotSqr"}], "+", 
    RowBox[{
     FractionBox["1", "2"], 
     RowBox[{
      SubscriptBox["\[Omega]", "1"], ".", "Imat", " ", ".", 
      SubscriptBox["\[Omega]", "1"]}]}]}]}], ")"}], "\[IndentingNewLine]", 
 RowBox[{"V", "=", 
  RowBox[{
   SubscriptBox["m", "1"], "g", 
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["z", "1"], "[", "t", "]"}], 
    ")"}]}]}], "\[IndentingNewLine]", 
 RowBox[{"L", "=", 
  RowBox[{"T", "-", "V"}]}]}], "Input",
 CellChangeTimes->{{3.7098893085949383`*^9, 3.709889383514906*^9}, {
   3.709912694315194*^9, 3.70991273810653*^9}, {3.7099146124074802`*^9, 
   3.70991461726021*^9}, 3.7102551069304085`*^9, {3.7103507891102843`*^9, 
   3.710350833293151*^9}, 3.710350878367876*^9, {3.7104710174520593`*^9, 
   3.7104710587284293`*^9}, {3.7104711920836306`*^9, 
   3.7104712331808777`*^9}, {3.7104712705666633`*^9, 3.710471280884234*^9}, {
   3.7104714608933635`*^9, 3.7104714776014414`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{
   FractionBox["1", "2"], " ", 
   SubscriptBox["m", "1"], " ", 
   RowBox[{"(", 
    RowBox[{
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["x", "1"], "\[Prime]",
        MultilineFunction->None], "[", "t", "]"}], "2"], "+", 
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["y", "1"], "\[Prime]",
        MultilineFunction->None], "[", "t", "]"}], "2"], "+", 
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["z", "1"], "\[Prime]",
        MultilineFunction->None], "[", "t", "]"}], "2"]}], ")"}]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      SubscriptBox["\[ImaginaryI]", "13"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"Sin", "[", 
           RowBox[{
            SubscriptBox["\[Phi]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Theta]", "1"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}], "+", 
         RowBox[{
          RowBox[{"Cos", "[", 
           RowBox[{
            SubscriptBox["\[Theta]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{"Cos", "[", 
           RowBox[{
            SubscriptBox["\[Phi]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Psi]", "1"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}]}], ")"}], "2"]}], "+", 
     RowBox[{
      SubscriptBox["\[ImaginaryI]", "11"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox[
           SubscriptBox["\[Phi]", "1"], "\[Prime]",
           MultilineFunction->None], "[", "t", "]"}], "+", 
         RowBox[{
          RowBox[{"Sin", "[", 
           RowBox[{
            SubscriptBox["\[Theta]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Psi]", "1"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}]}], ")"}], "2"]}], "+", 
     RowBox[{
      SubscriptBox["\[ImaginaryI]", "12"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"Cos", "[", 
           RowBox[{
            SubscriptBox["\[Phi]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Theta]", "1"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}], "-", 
         RowBox[{
          RowBox[{"Cos", "[", 
           RowBox[{
            SubscriptBox["\[Theta]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{"Sin", "[", 
           RowBox[{
            SubscriptBox["\[Phi]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Psi]", "1"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}]}], ")"}], "2"]}]}], 
    ")"}]}]}]], "Output",
 CellChangeTimes->{3.710470891591297*^9, 3.710471029499053*^9, 
  3.710471291318153*^9, 3.7104714787542048`*^9}],

Cell[BoxData[
 RowBox[{"g", " ", 
  SubscriptBox["m", "1"], " ", 
  RowBox[{
   SubscriptBox["z", "1"], "[", "t", "]"}]}]], "Output",
 CellChangeTimes->{3.710470891591297*^9, 3.710471029499053*^9, 
  3.710471291318153*^9, 3.7104714787582073`*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"-", "g"}], " ", 
   SubscriptBox["m", "1"], " ", 
   RowBox[{
    SubscriptBox["z", "1"], "[", "t", "]"}]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", 
   SubscriptBox["m", "1"], " ", 
   RowBox[{"(", 
    RowBox[{
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["x", "1"], "\[Prime]",
        MultilineFunction->None], "[", "t", "]"}], "2"], "+", 
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["y", "1"], "\[Prime]",
        MultilineFunction->None], "[", "t", "]"}], "2"], "+", 
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["z", "1"], "\[Prime]",
        MultilineFunction->None], "[", "t", "]"}], "2"]}], ")"}]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      SubscriptBox["\[ImaginaryI]", "13"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"Sin", "[", 
           RowBox[{
            SubscriptBox["\[Phi]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Theta]", "1"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}], "+", 
         RowBox[{
          RowBox[{"Cos", "[", 
           RowBox[{
            SubscriptBox["\[Theta]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{"Cos", "[", 
           RowBox[{
            SubscriptBox["\[Phi]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Psi]", "1"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}]}], ")"}], "2"]}], "+", 
     RowBox[{
      SubscriptBox["\[ImaginaryI]", "11"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox[
           SubscriptBox["\[Phi]", "1"], "\[Prime]",
           MultilineFunction->None], "[", "t", "]"}], "+", 
         RowBox[{
          RowBox[{"Sin", "[", 
           RowBox[{
            SubscriptBox["\[Theta]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Psi]", "1"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}]}], ")"}], "2"]}], "+", 
     RowBox[{
      SubscriptBox["\[ImaginaryI]", "12"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"Cos", "[", 
           RowBox[{
            SubscriptBox["\[Phi]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Theta]", "1"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}], "-", 
         RowBox[{
          RowBox[{"Cos", "[", 
           RowBox[{
            SubscriptBox["\[Theta]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{"Sin", "[", 
           RowBox[{
            SubscriptBox["\[Phi]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Psi]", "1"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}]}], ")"}], "2"]}]}], 
    ")"}]}]}]], "Output",
 CellChangeTimes->{3.710470891591297*^9, 3.710471029499053*^9, 
  3.710471291318153*^9, 3.71047147876221*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"q", "=", 
  RowBox[{"(", GridBox[{
     {
      SubscriptBox["x", "1"]},
     {
      SubscriptBox["y", "1"]},
     {
      SubscriptBox["z", "1"]},
     {
      SubscriptBox["\[Phi]", "1"]},
     {
      SubscriptBox["\[Theta]", "1"]},
     {
      SubscriptBox["\[Psi]", "1"]},
     {
      SubscriptBox["x", "2"]},
     {
      SubscriptBox["y", "2"]},
     {
      SubscriptBox["z", "2"]},
     {GridBox[{
        {
         SubscriptBox["\[Phi]", "2"]},
        {
         SubscriptBox["\[Theta]", "2"]},
        {
         SubscriptBox["\[Psi]", "2"]}
       }]},
     {"\[Beta]"},
     {"\[Gamma]"}
    }], ")"}]}]], "Input",
 CellChangeTimes->{{3.710470707688669*^9, 3.710470783351536*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    SubscriptBox["x", "1"], "}"}], ",", 
   RowBox[{"{", 
    SubscriptBox["y", "1"], "}"}], ",", 
   RowBox[{"{", 
    SubscriptBox["z", "1"], "}"}], ",", 
   RowBox[{"{", 
    SubscriptBox["\[Phi]", "1"], "}"}], ",", 
   RowBox[{"{", 
    SubscriptBox["\[Theta]", "1"], "}"}], ",", 
   RowBox[{"{", 
    SubscriptBox["\[Psi]", "1"], "}"}], ",", 
   RowBox[{"{", 
    SubscriptBox["x", "2"], "}"}], ",", 
   RowBox[{"{", 
    SubscriptBox["y", "2"], "}"}], ",", 
   RowBox[{"{", 
    SubscriptBox["z", "2"], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       SubscriptBox["\[Phi]", "2"], "}"}], ",", 
      RowBox[{"{", 
       SubscriptBox["\[Theta]", "2"], "}"}], ",", 
      RowBox[{"{", 
       SubscriptBox["\[Psi]", "2"], "}"}]}], "}"}], "}"}], ",", 
   RowBox[{"{", "\[Beta]", "}"}], ",", 
   RowBox[{"{", "\[Gamma]", "}"}]}], "}"}]], "Output",
 CellChangeTimes->{3.7104716537585506`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData["L"], "Input",
 CellChangeTimes->{{3.710471406983836*^9, 3.7104714167413073`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"-", "g"}], " ", 
   SubscriptBox["m", "1"], " ", 
   RowBox[{
    SubscriptBox["z", "1"], "[", "t", "]"}]}], "-", 
  RowBox[{"g", " ", 
   SubscriptBox["m", "p"], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{"-", 
       RowBox[{"Cos", "[", 
        RowBox[{"\[Beta]", "[", "t", "]"}], "]"}]}], " ", 
      SubscriptBox["l", "1"]}], "+", 
     RowBox[{
      SubscriptBox["z", "1"], "[", "t", "]"}]}], ")"}]}], "-", 
  RowBox[{"g", " ", 
   SubscriptBox["m", "2"], " ", 
   RowBox[{
    SubscriptBox["z", "2"], "[", "t", "]"}]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", 
   SubscriptBox["m", "1"], " ", 
   RowBox[{"(", 
    RowBox[{
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["x", "1"], "\[Prime]",
        MultilineFunction->None], "[", "t", "]"}], "2"], "+", 
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["y", "1"], "\[Prime]",
        MultilineFunction->None], "[", "t", "]"}], "2"], "+", 
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["z", "1"], "\[Prime]",
        MultilineFunction->None], "[", "t", "]"}], "2"]}], ")"}]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", 
   SubscriptBox["m", "p"], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      SubsuperscriptBox["l", "1", "2"], " ", 
      RowBox[{"(", 
       RowBox[{
        SuperscriptBox[
         RowBox[{
          SuperscriptBox["\[Beta]", "\[Prime]",
           MultilineFunction->None], "[", "t", "]"}], "2"], "+", 
        RowBox[{
         SuperscriptBox[
          RowBox[{"Sin", "[", 
           RowBox[{"\[Beta]", "[", "t", "]"}], "]"}], "2"], " ", 
         SuperscriptBox[
          RowBox[{
           SuperscriptBox["\[Gamma]", "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}], "2"]}]}], ")"}]}], "+", 
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["x", "1"], "\[Prime]",
        MultilineFunction->None], "[", "t", "]"}], "2"], "+", 
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["y", "1"], "\[Prime]",
        MultilineFunction->None], "[", "t", "]"}], "2"], "+", 
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["z", "1"], "\[Prime]",
        MultilineFunction->None], "[", "t", "]"}], "2"], "+", 
     RowBox[{"2", " ", 
      SubscriptBox["l", "1"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"Sin", "[", 
          RowBox[{"\[Beta]", "[", "t", "]"}], "]"}], " ", 
         RowBox[{
          SuperscriptBox["\[Gamma]", "\[Prime]",
           MultilineFunction->None], "[", "t", "]"}], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"-", 
             RowBox[{"Sin", "[", 
              RowBox[{"\[Gamma]", "[", "t", "]"}], "]"}]}], " ", 
            RowBox[{
             SuperscriptBox[
              SubscriptBox["x", "1"], "\[Prime]",
              MultilineFunction->None], "[", "t", "]"}]}], "+", 
           RowBox[{
            RowBox[{"Cos", "[", 
             RowBox[{"\[Gamma]", "[", "t", "]"}], "]"}], " ", 
            RowBox[{
             SuperscriptBox[
              SubscriptBox["y", "1"], "\[Prime]",
              MultilineFunction->None], "[", "t", "]"}]}]}], ")"}]}], "+", 
        RowBox[{
         RowBox[{
          SuperscriptBox["\[Beta]", "\[Prime]",
           MultilineFunction->None], "[", "t", "]"}], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"Cos", "[", 
             RowBox[{"\[Beta]", "[", "t", "]"}], "]"}], " ", 
            RowBox[{"Cos", "[", 
             RowBox[{"\[Gamma]", "[", "t", "]"}], "]"}], " ", 
            RowBox[{
             SuperscriptBox[
              SubscriptBox["x", "1"], "\[Prime]",
              MultilineFunction->None], "[", "t", "]"}]}], "+", 
           RowBox[{
            RowBox[{"Cos", "[", 
             RowBox[{"\[Beta]", "[", "t", "]"}], "]"}], " ", 
            RowBox[{"Sin", "[", 
             RowBox[{"\[Gamma]", "[", "t", "]"}], "]"}], " ", 
            RowBox[{
             SuperscriptBox[
              SubscriptBox["y", "1"], "\[Prime]",
              MultilineFunction->None], "[", "t", "]"}]}], "+", 
           RowBox[{
            RowBox[{"Sin", "[", 
             RowBox[{"\[Beta]", "[", "t", "]"}], "]"}], " ", 
            RowBox[{
             SuperscriptBox[
              SubscriptBox["z", "1"], "\[Prime]",
              MultilineFunction->None], "[", "t", "]"}]}]}], ")"}]}]}], 
       ")"}]}]}], ")"}]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", 
   SubscriptBox["m", "2"], " ", 
   RowBox[{"(", 
    RowBox[{
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["x", "2"], "\[Prime]",
        MultilineFunction->None], "[", "t", "]"}], "2"], "+", 
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["y", "2"], "\[Prime]",
        MultilineFunction->None], "[", "t", "]"}], "2"], "+", 
     SuperscriptBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["z", "2"], "\[Prime]",
        MultilineFunction->None], "[", "t", "]"}], "2"]}], ")"}]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      SubscriptBox["\[ImaginaryI]", "13"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"Sin", "[", 
           RowBox[{
            SubscriptBox["\[Phi]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Theta]", "1"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}], "+", 
         RowBox[{
          RowBox[{"Cos", "[", 
           RowBox[{
            SubscriptBox["\[Theta]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{"Cos", "[", 
           RowBox[{
            SubscriptBox["\[Phi]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Psi]", "1"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}]}], ")"}], "2"]}], "+", 
     RowBox[{
      SubscriptBox["\[ImaginaryI]", "11"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox[
           SubscriptBox["\[Phi]", "1"], "\[Prime]",
           MultilineFunction->None], "[", "t", "]"}], "+", 
         RowBox[{
          RowBox[{"Sin", "[", 
           RowBox[{
            SubscriptBox["\[Theta]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Psi]", "1"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}]}], ")"}], "2"]}], "+", 
     RowBox[{
      SubscriptBox["\[ImaginaryI]", "12"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"Cos", "[", 
           RowBox[{
            SubscriptBox["\[Phi]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Theta]", "1"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}], "-", 
         RowBox[{
          RowBox[{"Cos", "[", 
           RowBox[{
            SubscriptBox["\[Theta]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{"Sin", "[", 
           RowBox[{
            SubscriptBox["\[Phi]", "1"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Psi]", "1"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}]}], ")"}], "2"]}]}], 
    ")"}]}], "+", 
  RowBox[{
   FractionBox["1", "2"], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      SubscriptBox["\[ImaginaryI]", "13"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"Sin", "[", 
           RowBox[{
            SubscriptBox["\[Phi]", "2"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Theta]", "2"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}], "+", 
         RowBox[{
          RowBox[{"Cos", "[", 
           RowBox[{
            SubscriptBox["\[Theta]", "2"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{"Cos", "[", 
           RowBox[{
            SubscriptBox["\[Phi]", "2"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Psi]", "2"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}]}], ")"}], "2"]}], "+", 
     RowBox[{
      SubscriptBox["\[ImaginaryI]", "11"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox[
           SubscriptBox["\[Phi]", "2"], "\[Prime]",
           MultilineFunction->None], "[", "t", "]"}], "+", 
         RowBox[{
          RowBox[{"Sin", "[", 
           RowBox[{
            SubscriptBox["\[Theta]", "2"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Psi]", "2"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}]}], ")"}], "2"]}], "+", 
     RowBox[{
      SubscriptBox["\[ImaginaryI]", "12"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"Cos", "[", 
           RowBox[{
            SubscriptBox["\[Phi]", "2"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Theta]", "2"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}], "-", 
         RowBox[{
          RowBox[{"Cos", "[", 
           RowBox[{
            SubscriptBox["\[Theta]", "2"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{"Sin", "[", 
           RowBox[{
            SubscriptBox["\[Phi]", "2"], "[", "t", "]"}], "]"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Psi]", "2"], "\[Prime]",
            MultilineFunction->None], "[", "t", "]"}]}]}], ")"}], "2"]}]}], 
    ")"}]}]}]], "Output",
 CellChangeTimes->{{3.710471402191658*^9, 3.710471417165587*^9}, 
   3.710471657925312*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"Needs", "[", "\"\<VariationalMethods`\>\"", "]"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"(", 
      RowBox[{"quadEqNominal", "=", 
       RowBox[{
        RowBox[{
         RowBox[{"EulerEquations", "[", 
          RowBox[{"L", ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              SubscriptBox["x", "1"], "[", "t", "]"}], ",", 
             RowBox[{
              SubscriptBox["y", "1"], "[", "t", "]"}], ",", 
             RowBox[{
              SubscriptBox["z", "1"], "[", "t", "]"}], ",", 
             RowBox[{
              SubscriptBox["\[Phi]", "1"], "[", "t", "]"}], ",", 
             RowBox[{
              SubscriptBox["\[Theta]", "1"], "[", "t", "]"}], ",", 
             RowBox[{
              SubscriptBox["\[Psi]", "1"], "[", "t", "]"}], ",", 
             RowBox[{
              SubscriptBox["x", "2"], "[", "t", "]"}], ",", 
             RowBox[{
              SubscriptBox["y", "2"], "[", "t", "]"}], ",", 
             RowBox[{
              SubscriptBox["z", "2"], "[", "t", "]"}], ",", 
             RowBox[{
              SubscriptBox["\[Phi]", "2"], "[", "t", "]"}], ",", 
             RowBox[{
              SubscriptBox["\[Theta]", "2"], "[", "t", "]"}], ",", 
             RowBox[{
              SubscriptBox["\[Psi]", "2"], "[", "t", "]"}], ",", 
             RowBox[{"\[Beta]", "[", "t", "]"}], ",", 
             RowBox[{"\[Gamma]", "[", "t", "]"}]}], "}"}], ",", "t"}], "]"}], 
         "[", 
         RowBox[{"[", 
          RowBox[{"All", ",", "1"}], "]"}], "]"}], 
        RowBox[{"(*", 
         RowBox[{"\[Equal]", "Q"}], "*)"}], "//", "Simplify"}]}], ")"}], "/.", 
     RowBox[{"Cos", "\[Rule]", "c"}]}], "/.", 
    RowBox[{"Sin", "\[Rule]", "s"}]}], "//", "MatrixForm"}], "//", 
  "TraditionalForm"}]], "Input",
 CellChangeTimes->{{3.710471318787363*^9, 3.710471343715891*^9}}],

Cell[BoxData[
 FormBox[
  TagBox[
   RowBox[{"(", "\[NoBreak]", 
    TagBox[GridBox[{
       {
        RowBox[{
         RowBox[{
          SubscriptBox["l", "1"], " ", 
          SubscriptBox["m", "p"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"2", " ", 
             RowBox[{"c", "(", 
              RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
             RowBox[{"s", "(", 
              RowBox[{"\[Gamma]", "(", "t", ")"}], ")"}], " ", 
             RowBox[{
              SuperscriptBox["\[Beta]", "\[Prime]",
               MultilineFunction->None], "(", "t", ")"}], " ", 
             RowBox[{
              SuperscriptBox["\[Gamma]", "\[Prime]",
               MultilineFunction->None], "(", "t", ")"}]}], "+", 
            RowBox[{
             RowBox[{"c", "(", 
              RowBox[{"\[Gamma]", "(", "t", ")"}], ")"}], " ", 
             RowBox[{"s", "(", 
              RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
             SuperscriptBox[
              RowBox[{
               SuperscriptBox["\[Beta]", "\[Prime]",
                MultilineFunction->None], "(", "t", ")"}], "2"]}], "+", 
            RowBox[{
             RowBox[{"c", "(", 
              RowBox[{"\[Gamma]", "(", "t", ")"}], ")"}], " ", 
             RowBox[{"s", "(", 
              RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
             SuperscriptBox[
              RowBox[{
               SuperscriptBox["\[Gamma]", "\[Prime]",
                MultilineFunction->None], "(", "t", ")"}], "2"]}], "-", 
            RowBox[{
             RowBox[{"c", "(", 
              RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
             RowBox[{"c", "(", 
              RowBox[{"\[Gamma]", "(", "t", ")"}], ")"}], " ", 
             RowBox[{
              SuperscriptBox["\[Beta]", "\[Prime]\[Prime]",
               MultilineFunction->None], "(", "t", ")"}]}], "+", 
            RowBox[{
             RowBox[{"s", "(", 
              RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
             RowBox[{"s", "(", 
              RowBox[{"\[Gamma]", "(", "t", ")"}], ")"}], " ", 
             RowBox[{
              SuperscriptBox["\[Gamma]", "\[Prime]\[Prime]",
               MultilineFunction->None], "(", "t", ")"}]}]}], ")"}]}], "-", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            SubscriptBox["m", "p"], "+", 
            SubscriptBox["m", "1"]}], ")"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["x", "1"], "\[Prime]\[Prime]",
            MultilineFunction->None], "(", "t", ")"}]}]}]},
       {
        RowBox[{
         RowBox[{
          SubscriptBox["l", "1"], " ", 
          SubscriptBox["m", "p"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", 
             RowBox[{
              RowBox[{"c", "(", 
               RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
              RowBox[{"s", "(", 
               RowBox[{"\[Gamma]", "(", "t", ")"}], ")"}], " ", 
              RowBox[{
               SuperscriptBox["\[Beta]", "\[Prime]\[Prime]",
                MultilineFunction->None], "(", "t", ")"}]}]}], "-", 
            RowBox[{
             RowBox[{"c", "(", 
              RowBox[{"\[Gamma]", "(", "t", ")"}], ")"}], " ", 
             RowBox[{"s", "(", 
              RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
             RowBox[{
              SuperscriptBox["\[Gamma]", "\[Prime]\[Prime]",
               MultilineFunction->None], "(", "t", ")"}]}], "-", 
            RowBox[{"2", " ", 
             RowBox[{"c", "(", 
              RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
             RowBox[{"c", "(", 
              RowBox[{"\[Gamma]", "(", "t", ")"}], ")"}], " ", 
             RowBox[{
              SuperscriptBox["\[Beta]", "\[Prime]",
               MultilineFunction->None], "(", "t", ")"}], " ", 
             RowBox[{
              SuperscriptBox["\[Gamma]", "\[Prime]",
               MultilineFunction->None], "(", "t", ")"}]}], "+", 
            RowBox[{
             RowBox[{"s", "(", 
              RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
             RowBox[{"s", "(", 
              RowBox[{"\[Gamma]", "(", "t", ")"}], ")"}], " ", 
             SuperscriptBox[
              RowBox[{
               SuperscriptBox["\[Beta]", "\[Prime]",
                MultilineFunction->None], "(", "t", ")"}], "2"]}], "+", 
            RowBox[{
             RowBox[{"s", "(", 
              RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
             RowBox[{"s", "(", 
              RowBox[{"\[Gamma]", "(", "t", ")"}], ")"}], " ", 
             SuperscriptBox[
              RowBox[{
               SuperscriptBox["\[Gamma]", "\[Prime]",
                MultilineFunction->None], "(", "t", ")"}], "2"]}]}], ")"}]}], 
         "-", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            SubscriptBox["m", "p"], "+", 
            SubscriptBox["m", "1"]}], ")"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["y", "1"], "\[Prime]\[Prime]",
            MultilineFunction->None], "(", "t", ")"}]}]}]},
       {
        RowBox[{
         RowBox[{"-", 
          RowBox[{
           SubscriptBox["m", "p"], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              SubscriptBox["l", "1"], " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 RowBox[{"c", "(", 
                  RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
                 SuperscriptBox[
                  RowBox[{
                   SuperscriptBox["\[Beta]", "\[Prime]",
                    MultilineFunction->None], "(", "t", ")"}], "2"]}], "+", 
                RowBox[{
                 RowBox[{"s", "(", 
                  RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
                 RowBox[{
                  SuperscriptBox["\[Beta]", "\[Prime]\[Prime]",
                   MultilineFunction->None], "(", "t", ")"}]}]}], ")"}]}], 
             "+", "g", "+", 
             RowBox[{
              SuperscriptBox[
               SubscriptBox["z", "1"], "\[Prime]\[Prime]",
               MultilineFunction->None], "(", "t", ")"}]}], ")"}]}]}], "-", 
         RowBox[{
          SubscriptBox["m", "1"], " ", 
          RowBox[{"(", 
           RowBox[{"g", "+", 
            RowBox[{
             SuperscriptBox[
              SubscriptBox["z", "1"], "\[Prime]\[Prime]",
              MultilineFunction->None], "(", "t", ")"}]}], ")"}]}]}]},
       {
        RowBox[{
         FractionBox["1", "2"], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              SubscriptBox["\[ImaginaryI]", "12"], "-", 
              SubscriptBox["\[ImaginaryI]", "13"]}], ")"}], " ", 
            SuperscriptBox[
             RowBox[{"c", "(", 
              RowBox[{
               SubscriptBox["\[Theta]", "1"], "(", "t", ")"}], ")"}], "2"], 
            " ", 
            RowBox[{"s", "(", 
             RowBox[{"2", " ", 
              RowBox[{
               SubscriptBox["\[Phi]", "1"], "(", "t", ")"}]}], ")"}], " ", 
            SuperscriptBox[
             RowBox[{
              SuperscriptBox[
               SubscriptBox["\[Psi]", "1"], "\[Prime]",
               MultilineFunction->None], "(", "t", ")"}], "2"]}], "-", 
           RowBox[{"2", " ", 
            RowBox[{"c", "(", 
             RowBox[{
              SubscriptBox["\[Theta]", "1"], "(", "t", ")"}], ")"}], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 SubscriptBox["\[ImaginaryI]", "12"], "-", 
                 SubscriptBox["\[ImaginaryI]", "13"]}], ")"}], " ", 
               RowBox[{"c", "(", 
                RowBox[{"2", " ", 
                 RowBox[{
                  SubscriptBox["\[Phi]", "1"], "(", "t", ")"}]}], ")"}]}], 
              "+", 
              SubscriptBox["\[ImaginaryI]", "11"]}], ")"}], " ", 
            RowBox[{
             SuperscriptBox[
              SubscriptBox["\[Theta]", "1"], "\[Prime]",
              MultilineFunction->None], "(", "t", ")"}], " ", 
            RowBox[{
             SuperscriptBox[
              SubscriptBox["\[Psi]", "1"], "\[Prime]",
              MultilineFunction->None], "(", "t", ")"}]}], "-", 
           RowBox[{"2", " ", 
            SubscriptBox["\[ImaginaryI]", "11"], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               RowBox[{"s", "(", 
                RowBox[{
                 SubscriptBox["\[Theta]", "1"], "(", "t", ")"}], ")"}], " ", 
               RowBox[{
                SuperscriptBox[
                 SubscriptBox["\[Psi]", "1"], "\[Prime]\[Prime]",
                 MultilineFunction->None], "(", "t", ")"}]}], "+", 
              RowBox[{
               SuperscriptBox[
                SubscriptBox["\[Phi]", "1"], "\[Prime]\[Prime]",
                MultilineFunction->None], "(", "t", ")"}]}], ")"}]}], "+", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              SubscriptBox["\[ImaginaryI]", "12"], "-", 
              SubscriptBox["\[ImaginaryI]", "13"]}], ")"}], " ", 
            RowBox[{"(", 
             RowBox[{"-", 
              RowBox[{"s", "(", 
               RowBox[{"2", " ", 
                RowBox[{
                 SubscriptBox["\[Phi]", "1"], "(", "t", ")"}]}], ")"}]}], 
             ")"}], " ", 
            SuperscriptBox[
             RowBox[{
              SuperscriptBox[
               SubscriptBox["\[Theta]", "1"], "\[Prime]",
               MultilineFunction->None], "(", "t", ")"}], "2"]}]}], ")"}]}]},
       {
        RowBox[{
         RowBox[{
          FractionBox["1", "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             RowBox[{"s", "(", 
              RowBox[{"2", " ", 
               RowBox[{
                SubscriptBox["\[Theta]", "1"], "(", "t", ")"}]}], ")"}], " ", 
             SuperscriptBox[
              RowBox[{
               SuperscriptBox[
                SubscriptBox["\[Psi]", "1"], "\[Prime]",
                MultilineFunction->None], "(", "t", ")"}], "2"], " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"-", 
                RowBox[{
                 SubscriptBox["\[ImaginaryI]", "13"], " ", 
                 SuperscriptBox[
                  RowBox[{"c", "(", 
                   RowBox[{
                    SubscriptBox["\[Phi]", "1"], "(", "t", ")"}], ")"}], 
                  "2"]}]}], "-", 
               RowBox[{
                SubscriptBox["\[ImaginaryI]", "12"], " ", 
                SuperscriptBox[
                 RowBox[{"s", "(", 
                  RowBox[{
                   SubscriptBox["\[Phi]", "1"], "(", "t", ")"}], ")"}], 
                 "2"]}], "+", 
               SubscriptBox["\[ImaginaryI]", "11"]}], ")"}]}], "+", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               SubscriptBox["\[ImaginaryI]", "12"], "-", 
               SubscriptBox["\[ImaginaryI]", "13"]}], ")"}], " ", 
             RowBox[{"c", "(", 
              RowBox[{
               SubscriptBox["\[Theta]", "1"], "(", "t", ")"}], ")"}], " ", 
             RowBox[{"s", "(", 
              RowBox[{"2", " ", 
               RowBox[{
                SubscriptBox["\[Phi]", "1"], "(", "t", ")"}]}], ")"}], " ", 
             RowBox[{
              SuperscriptBox[
               SubscriptBox["\[Psi]", "1"], "\[Prime]\[Prime]",
               MultilineFunction->None], "(", "t", ")"}]}], "-", 
            RowBox[{"2", " ", 
             RowBox[{
              SuperscriptBox[
               SubscriptBox["\[Theta]", "1"], "\[Prime]\[Prime]",
               MultilineFunction->None], "(", "t", ")"}], " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{
                SubscriptBox["\[ImaginaryI]", "12"], " ", 
                SuperscriptBox[
                 RowBox[{"c", "(", 
                  RowBox[{
                   SubscriptBox["\[Phi]", "1"], "(", "t", ")"}], ")"}], 
                 "2"]}], "+", 
               RowBox[{
                SubscriptBox["\[ImaginaryI]", "13"], " ", 
                SuperscriptBox[
                 RowBox[{"s", "(", 
                  RowBox[{
                   SubscriptBox["\[Phi]", "1"], "(", "t", ")"}], ")"}], 
                 "2"]}]}], ")"}]}]}], ")"}]}], "+", 
         RowBox[{
          RowBox[{"c", "(", 
           RowBox[{
            SubscriptBox["\[Theta]", "1"], "(", "t", ")"}], ")"}], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               SubscriptBox["\[ImaginaryI]", "12"], "-", 
               SubscriptBox["\[ImaginaryI]", "13"]}], ")"}], " ", 
             RowBox[{"c", "(", 
              RowBox[{"2", " ", 
               RowBox[{
                SubscriptBox["\[Phi]", "1"], "(", "t", ")"}]}], ")"}]}], "+", 
            SubscriptBox["\[ImaginaryI]", "11"]}], ")"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Psi]", "1"], "\[Prime]",
            MultilineFunction->None], "(", "t", ")"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Phi]", "1"], "\[Prime]",
            MultilineFunction->None], "(", "t", ")"}]}], "+", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            SubscriptBox["\[ImaginaryI]", "12"], "-", 
            SubscriptBox["\[ImaginaryI]", "13"]}], ")"}], " ", 
          RowBox[{"s", "(", 
           RowBox[{"2", " ", 
            RowBox[{
             SubscriptBox["\[Phi]", "1"], "(", "t", ")"}]}], ")"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Theta]", "1"], "\[Prime]",
            MultilineFunction->None], "(", "t", ")"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Phi]", "1"], "\[Prime]",
            MultilineFunction->None], "(", "t", ")"}]}]}]},
       {
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            SubscriptBox["\[ImaginaryI]", "12"], "-", 
            SubscriptBox["\[ImaginaryI]", "13"]}], ")"}], " ", 
          SuperscriptBox[
           RowBox[{"c", "(", 
            RowBox[{
             SubscriptBox["\[Theta]", "1"], "(", "t", ")"}], ")"}], "2"], " ", 
          RowBox[{"(", 
           RowBox[{"-", 
            RowBox[{"s", "(", 
             RowBox[{"2", " ", 
              RowBox[{
               SubscriptBox["\[Phi]", "1"], "(", "t", ")"}]}], ")"}]}], ")"}],
           " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Psi]", "1"], "\[Prime]",
            MultilineFunction->None], "(", "t", ")"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Phi]", "1"], "\[Prime]",
            MultilineFunction->None], "(", "t", ")"}]}], "+", 
         RowBox[{
          RowBox[{"c", "(", 
           RowBox[{
            SubscriptBox["\[Theta]", "1"], "(", "t", ")"}], ")"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Theta]", "1"], "\[Prime]",
            MultilineFunction->None], "(", "t", ")"}], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"2", " ", 
             RowBox[{"s", "(", 
              RowBox[{
               SubscriptBox["\[Theta]", "1"], "(", "t", ")"}], ")"}], " ", 
             RowBox[{
              SuperscriptBox[
               SubscriptBox["\[Psi]", "1"], "\[Prime]",
               MultilineFunction->None], "(", "t", ")"}], " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{
                SubscriptBox["\[ImaginaryI]", "13"], " ", 
                SuperscriptBox[
                 RowBox[{"c", "(", 
                  RowBox[{
                   SubscriptBox["\[Phi]", "1"], "(", "t", ")"}], ")"}], 
                 "2"]}], "+", 
               RowBox[{
                SubscriptBox["\[ImaginaryI]", "12"], " ", 
                SuperscriptBox[
                 RowBox[{"s", "(", 
                  RowBox[{
                   SubscriptBox["\[Phi]", "1"], "(", "t", ")"}], ")"}], 
                 "2"]}], "-", 
               SubscriptBox["\[ImaginaryI]", "11"]}], ")"}]}], "-", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{
                RowBox[{"(", 
                 RowBox[{
                  SubscriptBox["\[ImaginaryI]", "13"], "-", 
                  SubscriptBox["\[ImaginaryI]", "12"]}], ")"}], " ", 
                RowBox[{"c", "(", 
                 RowBox[{"2", " ", 
                  RowBox[{
                   SubscriptBox["\[Phi]", "1"], "(", "t", ")"}]}], ")"}]}], 
               "+", 
               SubscriptBox["\[ImaginaryI]", "11"]}], ")"}], " ", 
             RowBox[{
              SuperscriptBox[
               SubscriptBox["\[Phi]", "1"], "\[Prime]",
               MultilineFunction->None], "(", "t", ")"}]}]}], ")"}]}], "-", 
         RowBox[{
          SubscriptBox["\[ImaginaryI]", "12"], " ", 
          SuperscriptBox[
           RowBox[{"c", "(", 
            RowBox[{
             SubscriptBox["\[Theta]", "1"], "(", "t", ")"}], ")"}], "2"], " ", 
          SuperscriptBox[
           RowBox[{"s", "(", 
            RowBox[{
             SubscriptBox["\[Phi]", "1"], "(", "t", ")"}], ")"}], "2"], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Psi]", "1"], "\[Prime]\[Prime]",
            MultilineFunction->None], "(", "t", ")"}]}], "+", 
         RowBox[{
          SubscriptBox["\[ImaginaryI]", "12"], " ", 
          RowBox[{"c", "(", 
           RowBox[{
            SubscriptBox["\[Theta]", "1"], "(", "t", ")"}], ")"}], " ", 
          RowBox[{"c", "(", 
           RowBox[{
            SubscriptBox["\[Phi]", "1"], "(", "t", ")"}], ")"}], " ", 
          RowBox[{"s", "(", 
           RowBox[{
            SubscriptBox["\[Phi]", "1"], "(", "t", ")"}], ")"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Theta]", "1"], "\[Prime]\[Prime]",
            MultilineFunction->None], "(", "t", ")"}]}], "-", 
         RowBox[{
          FractionBox["1", "2"], " ", 
          SubscriptBox["\[ImaginaryI]", "13"], " ", 
          RowBox[{"c", "(", 
           RowBox[{
            SubscriptBox["\[Theta]", "1"], "(", "t", ")"}], ")"}], " ", 
          RowBox[{"s", "(", 
           RowBox[{"2", " ", 
            RowBox[{
             SubscriptBox["\[Phi]", "1"], "(", "t", ")"}]}], ")"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Theta]", "1"], "\[Prime]\[Prime]",
            MultilineFunction->None], "(", "t", ")"}]}], "-", 
         RowBox[{
          SubscriptBox["\[ImaginaryI]", "13"], " ", 
          SuperscriptBox[
           RowBox[{"c", "(", 
            RowBox[{
             SubscriptBox["\[Theta]", "1"], "(", "t", ")"}], ")"}], "2"], " ", 
          SuperscriptBox[
           RowBox[{"c", "(", 
            RowBox[{
             SubscriptBox["\[Phi]", "1"], "(", "t", ")"}], ")"}], "2"], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Psi]", "1"], "\[Prime]\[Prime]",
            MultilineFunction->None], "(", "t", ")"}]}], "-", 
         RowBox[{
          SubscriptBox["\[ImaginaryI]", "11"], " ", 
          SuperscriptBox[
           RowBox[{"s", "(", 
            RowBox[{
             SubscriptBox["\[Theta]", "1"], "(", "t", ")"}], ")"}], "2"], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Psi]", "1"], "\[Prime]\[Prime]",
            MultilineFunction->None], "(", "t", ")"}]}], "-", 
         RowBox[{
          FractionBox["1", "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            SubscriptBox["\[ImaginaryI]", "12"], "-", 
            SubscriptBox["\[ImaginaryI]", "13"]}], ")"}], " ", 
          RowBox[{"s", "(", 
           RowBox[{
            SubscriptBox["\[Theta]", "1"], "(", "t", ")"}], ")"}], " ", 
          RowBox[{"s", "(", 
           RowBox[{"2", " ", 
            RowBox[{
             SubscriptBox["\[Phi]", "1"], "(", "t", ")"}]}], ")"}], " ", 
          SuperscriptBox[
           RowBox[{
            SuperscriptBox[
             SubscriptBox["\[Theta]", "1"], "\[Prime]",
             MultilineFunction->None], "(", "t", ")"}], "2"]}], "-", 
         RowBox[{
          SubscriptBox["\[ImaginaryI]", "11"], " ", 
          RowBox[{"s", "(", 
           RowBox[{
            SubscriptBox["\[Theta]", "1"], "(", "t", ")"}], ")"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Phi]", "1"], "\[Prime]\[Prime]",
            MultilineFunction->None], "(", "t", ")"}]}]}]},
       {
        RowBox[{
         RowBox[{"-", 
          SubscriptBox["m", "2"]}], " ", 
         RowBox[{
          SuperscriptBox[
           SubscriptBox["x", "2"], "\[Prime]\[Prime]",
           MultilineFunction->None], "(", "t", ")"}]}]},
       {
        RowBox[{
         RowBox[{"-", 
          SubscriptBox["m", "2"]}], " ", 
         RowBox[{
          SuperscriptBox[
           SubscriptBox["y", "2"], "\[Prime]\[Prime]",
           MultilineFunction->None], "(", "t", ")"}]}]},
       {
        RowBox[{
         RowBox[{"-", 
          SubscriptBox["m", "2"]}], " ", 
         RowBox[{"(", 
          RowBox[{"g", "+", 
           RowBox[{
            SuperscriptBox[
             SubscriptBox["z", "2"], "\[Prime]\[Prime]",
             MultilineFunction->None], "(", "t", ")"}]}], ")"}]}]},
       {
        RowBox[{
         FractionBox["1", "2"], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              SubscriptBox["\[ImaginaryI]", "12"], "-", 
              SubscriptBox["\[ImaginaryI]", "13"]}], ")"}], " ", 
            SuperscriptBox[
             RowBox[{"c", "(", 
              RowBox[{
               SubscriptBox["\[Theta]", "2"], "(", "t", ")"}], ")"}], "2"], 
            " ", 
            RowBox[{"s", "(", 
             RowBox[{"2", " ", 
              RowBox[{
               SubscriptBox["\[Phi]", "2"], "(", "t", ")"}]}], ")"}], " ", 
            SuperscriptBox[
             RowBox[{
              SuperscriptBox[
               SubscriptBox["\[Psi]", "2"], "\[Prime]",
               MultilineFunction->None], "(", "t", ")"}], "2"]}], "-", 
           RowBox[{"2", " ", 
            RowBox[{"c", "(", 
             RowBox[{
              SubscriptBox["\[Theta]", "2"], "(", "t", ")"}], ")"}], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 SubscriptBox["\[ImaginaryI]", "12"], "-", 
                 SubscriptBox["\[ImaginaryI]", "13"]}], ")"}], " ", 
               RowBox[{"c", "(", 
                RowBox[{"2", " ", 
                 RowBox[{
                  SubscriptBox["\[Phi]", "2"], "(", "t", ")"}]}], ")"}]}], 
              "+", 
              SubscriptBox["\[ImaginaryI]", "11"]}], ")"}], " ", 
            RowBox[{
             SuperscriptBox[
              SubscriptBox["\[Theta]", "2"], "\[Prime]",
              MultilineFunction->None], "(", "t", ")"}], " ", 
            RowBox[{
             SuperscriptBox[
              SubscriptBox["\[Psi]", "2"], "\[Prime]",
              MultilineFunction->None], "(", "t", ")"}]}], "-", 
           RowBox[{"2", " ", 
            SubscriptBox["\[ImaginaryI]", "11"], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               RowBox[{"s", "(", 
                RowBox[{
                 SubscriptBox["\[Theta]", "2"], "(", "t", ")"}], ")"}], " ", 
               RowBox[{
                SuperscriptBox[
                 SubscriptBox["\[Psi]", "2"], "\[Prime]\[Prime]",
                 MultilineFunction->None], "(", "t", ")"}]}], "+", 
              RowBox[{
               SuperscriptBox[
                SubscriptBox["\[Phi]", "2"], "\[Prime]\[Prime]",
                MultilineFunction->None], "(", "t", ")"}]}], ")"}]}], "+", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              SubscriptBox["\[ImaginaryI]", "12"], "-", 
              SubscriptBox["\[ImaginaryI]", "13"]}], ")"}], " ", 
            RowBox[{"(", 
             RowBox[{"-", 
              RowBox[{"s", "(", 
               RowBox[{"2", " ", 
                RowBox[{
                 SubscriptBox["\[Phi]", "2"], "(", "t", ")"}]}], ")"}]}], 
             ")"}], " ", 
            SuperscriptBox[
             RowBox[{
              SuperscriptBox[
               SubscriptBox["\[Theta]", "2"], "\[Prime]",
               MultilineFunction->None], "(", "t", ")"}], "2"]}]}], ")"}]}]},
       {
        RowBox[{
         RowBox[{
          FractionBox["1", "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             RowBox[{"s", "(", 
              RowBox[{"2", " ", 
               RowBox[{
                SubscriptBox["\[Theta]", "2"], "(", "t", ")"}]}], ")"}], " ", 
             SuperscriptBox[
              RowBox[{
               SuperscriptBox[
                SubscriptBox["\[Psi]", "2"], "\[Prime]",
                MultilineFunction->None], "(", "t", ")"}], "2"], " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"-", 
                RowBox[{
                 SubscriptBox["\[ImaginaryI]", "13"], " ", 
                 SuperscriptBox[
                  RowBox[{"c", "(", 
                   RowBox[{
                    SubscriptBox["\[Phi]", "2"], "(", "t", ")"}], ")"}], 
                  "2"]}]}], "-", 
               RowBox[{
                SubscriptBox["\[ImaginaryI]", "12"], " ", 
                SuperscriptBox[
                 RowBox[{"s", "(", 
                  RowBox[{
                   SubscriptBox["\[Phi]", "2"], "(", "t", ")"}], ")"}], 
                 "2"]}], "+", 
               SubscriptBox["\[ImaginaryI]", "11"]}], ")"}]}], "+", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               SubscriptBox["\[ImaginaryI]", "12"], "-", 
               SubscriptBox["\[ImaginaryI]", "13"]}], ")"}], " ", 
             RowBox[{"c", "(", 
              RowBox[{
               SubscriptBox["\[Theta]", "2"], "(", "t", ")"}], ")"}], " ", 
             RowBox[{"s", "(", 
              RowBox[{"2", " ", 
               RowBox[{
                SubscriptBox["\[Phi]", "2"], "(", "t", ")"}]}], ")"}], " ", 
             RowBox[{
              SuperscriptBox[
               SubscriptBox["\[Psi]", "2"], "\[Prime]\[Prime]",
               MultilineFunction->None], "(", "t", ")"}]}], "-", 
            RowBox[{"2", " ", 
             RowBox[{
              SuperscriptBox[
               SubscriptBox["\[Theta]", "2"], "\[Prime]\[Prime]",
               MultilineFunction->None], "(", "t", ")"}], " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{
                SubscriptBox["\[ImaginaryI]", "12"], " ", 
                SuperscriptBox[
                 RowBox[{"c", "(", 
                  RowBox[{
                   SubscriptBox["\[Phi]", "2"], "(", "t", ")"}], ")"}], 
                 "2"]}], "+", 
               RowBox[{
                SubscriptBox["\[ImaginaryI]", "13"], " ", 
                SuperscriptBox[
                 RowBox[{"s", "(", 
                  RowBox[{
                   SubscriptBox["\[Phi]", "2"], "(", "t", ")"}], ")"}], 
                 "2"]}]}], ")"}]}]}], ")"}]}], "+", 
         RowBox[{
          RowBox[{"c", "(", 
           RowBox[{
            SubscriptBox["\[Theta]", "2"], "(", "t", ")"}], ")"}], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               SubscriptBox["\[ImaginaryI]", "12"], "-", 
               SubscriptBox["\[ImaginaryI]", "13"]}], ")"}], " ", 
             RowBox[{"c", "(", 
              RowBox[{"2", " ", 
               RowBox[{
                SubscriptBox["\[Phi]", "2"], "(", "t", ")"}]}], ")"}]}], "+", 
            SubscriptBox["\[ImaginaryI]", "11"]}], ")"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Psi]", "2"], "\[Prime]",
            MultilineFunction->None], "(", "t", ")"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Phi]", "2"], "\[Prime]",
            MultilineFunction->None], "(", "t", ")"}]}], "+", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            SubscriptBox["\[ImaginaryI]", "12"], "-", 
            SubscriptBox["\[ImaginaryI]", "13"]}], ")"}], " ", 
          RowBox[{"s", "(", 
           RowBox[{"2", " ", 
            RowBox[{
             SubscriptBox["\[Phi]", "2"], "(", "t", ")"}]}], ")"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Theta]", "2"], "\[Prime]",
            MultilineFunction->None], "(", "t", ")"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Phi]", "2"], "\[Prime]",
            MultilineFunction->None], "(", "t", ")"}]}]}]},
       {
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            SubscriptBox["\[ImaginaryI]", "12"], "-", 
            SubscriptBox["\[ImaginaryI]", "13"]}], ")"}], " ", 
          SuperscriptBox[
           RowBox[{"c", "(", 
            RowBox[{
             SubscriptBox["\[Theta]", "2"], "(", "t", ")"}], ")"}], "2"], " ", 
          RowBox[{"(", 
           RowBox[{"-", 
            RowBox[{"s", "(", 
             RowBox[{"2", " ", 
              RowBox[{
               SubscriptBox["\[Phi]", "2"], "(", "t", ")"}]}], ")"}]}], ")"}],
           " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Psi]", "2"], "\[Prime]",
            MultilineFunction->None], "(", "t", ")"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Phi]", "2"], "\[Prime]",
            MultilineFunction->None], "(", "t", ")"}]}], "+", 
         RowBox[{
          RowBox[{"c", "(", 
           RowBox[{
            SubscriptBox["\[Theta]", "2"], "(", "t", ")"}], ")"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Theta]", "2"], "\[Prime]",
            MultilineFunction->None], "(", "t", ")"}], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"2", " ", 
             RowBox[{"s", "(", 
              RowBox[{
               SubscriptBox["\[Theta]", "2"], "(", "t", ")"}], ")"}], " ", 
             RowBox[{
              SuperscriptBox[
               SubscriptBox["\[Psi]", "2"], "\[Prime]",
               MultilineFunction->None], "(", "t", ")"}], " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{
                SubscriptBox["\[ImaginaryI]", "13"], " ", 
                SuperscriptBox[
                 RowBox[{"c", "(", 
                  RowBox[{
                   SubscriptBox["\[Phi]", "2"], "(", "t", ")"}], ")"}], 
                 "2"]}], "+", 
               RowBox[{
                SubscriptBox["\[ImaginaryI]", "12"], " ", 
                SuperscriptBox[
                 RowBox[{"s", "(", 
                  RowBox[{
                   SubscriptBox["\[Phi]", "2"], "(", "t", ")"}], ")"}], 
                 "2"]}], "-", 
               SubscriptBox["\[ImaginaryI]", "11"]}], ")"}]}], "-", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{
                RowBox[{"(", 
                 RowBox[{
                  SubscriptBox["\[ImaginaryI]", "13"], "-", 
                  SubscriptBox["\[ImaginaryI]", "12"]}], ")"}], " ", 
                RowBox[{"c", "(", 
                 RowBox[{"2", " ", 
                  RowBox[{
                   SubscriptBox["\[Phi]", "2"], "(", "t", ")"}]}], ")"}]}], 
               "+", 
               SubscriptBox["\[ImaginaryI]", "11"]}], ")"}], " ", 
             RowBox[{
              SuperscriptBox[
               SubscriptBox["\[Phi]", "2"], "\[Prime]",
               MultilineFunction->None], "(", "t", ")"}]}]}], ")"}]}], "-", 
         RowBox[{
          SubscriptBox["\[ImaginaryI]", "12"], " ", 
          SuperscriptBox[
           RowBox[{"c", "(", 
            RowBox[{
             SubscriptBox["\[Theta]", "2"], "(", "t", ")"}], ")"}], "2"], " ", 
          SuperscriptBox[
           RowBox[{"s", "(", 
            RowBox[{
             SubscriptBox["\[Phi]", "2"], "(", "t", ")"}], ")"}], "2"], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Psi]", "2"], "\[Prime]\[Prime]",
            MultilineFunction->None], "(", "t", ")"}]}], "+", 
         RowBox[{
          SubscriptBox["\[ImaginaryI]", "12"], " ", 
          RowBox[{"c", "(", 
           RowBox[{
            SubscriptBox["\[Theta]", "2"], "(", "t", ")"}], ")"}], " ", 
          RowBox[{"c", "(", 
           RowBox[{
            SubscriptBox["\[Phi]", "2"], "(", "t", ")"}], ")"}], " ", 
          RowBox[{"s", "(", 
           RowBox[{
            SubscriptBox["\[Phi]", "2"], "(", "t", ")"}], ")"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Theta]", "2"], "\[Prime]\[Prime]",
            MultilineFunction->None], "(", "t", ")"}]}], "-", 
         RowBox[{
          FractionBox["1", "2"], " ", 
          SubscriptBox["\[ImaginaryI]", "13"], " ", 
          RowBox[{"c", "(", 
           RowBox[{
            SubscriptBox["\[Theta]", "2"], "(", "t", ")"}], ")"}], " ", 
          RowBox[{"s", "(", 
           RowBox[{"2", " ", 
            RowBox[{
             SubscriptBox["\[Phi]", "2"], "(", "t", ")"}]}], ")"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Theta]", "2"], "\[Prime]\[Prime]",
            MultilineFunction->None], "(", "t", ")"}]}], "-", 
         RowBox[{
          SubscriptBox["\[ImaginaryI]", "13"], " ", 
          SuperscriptBox[
           RowBox[{"c", "(", 
            RowBox[{
             SubscriptBox["\[Theta]", "2"], "(", "t", ")"}], ")"}], "2"], " ", 
          SuperscriptBox[
           RowBox[{"c", "(", 
            RowBox[{
             SubscriptBox["\[Phi]", "2"], "(", "t", ")"}], ")"}], "2"], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Psi]", "2"], "\[Prime]\[Prime]",
            MultilineFunction->None], "(", "t", ")"}]}], "-", 
         RowBox[{
          SubscriptBox["\[ImaginaryI]", "11"], " ", 
          SuperscriptBox[
           RowBox[{"s", "(", 
            RowBox[{
             SubscriptBox["\[Theta]", "2"], "(", "t", ")"}], ")"}], "2"], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Psi]", "2"], "\[Prime]\[Prime]",
            MultilineFunction->None], "(", "t", ")"}]}], "-", 
         RowBox[{
          FractionBox["1", "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            SubscriptBox["\[ImaginaryI]", "12"], "-", 
            SubscriptBox["\[ImaginaryI]", "13"]}], ")"}], " ", 
          RowBox[{"s", "(", 
           RowBox[{
            SubscriptBox["\[Theta]", "2"], "(", "t", ")"}], ")"}], " ", 
          RowBox[{"s", "(", 
           RowBox[{"2", " ", 
            RowBox[{
             SubscriptBox["\[Phi]", "2"], "(", "t", ")"}]}], ")"}], " ", 
          SuperscriptBox[
           RowBox[{
            SuperscriptBox[
             SubscriptBox["\[Theta]", "2"], "\[Prime]",
             MultilineFunction->None], "(", "t", ")"}], "2"]}], "-", 
         RowBox[{
          SubscriptBox["\[ImaginaryI]", "11"], " ", 
          RowBox[{"s", "(", 
           RowBox[{
            SubscriptBox["\[Theta]", "2"], "(", "t", ")"}], ")"}], " ", 
          RowBox[{
           SuperscriptBox[
            SubscriptBox["\[Phi]", "2"], "\[Prime]\[Prime]",
            MultilineFunction->None], "(", "t", ")"}]}]}]},
       {
        RowBox[{
         SubscriptBox["l", "1"], " ", 
         SubscriptBox["m", "p"], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SubscriptBox["l", "1"], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               RowBox[{"c", "(", 
                RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
               RowBox[{"s", "(", 
                RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
               SuperscriptBox[
                RowBox[{
                 SuperscriptBox["\[Gamma]", "\[Prime]",
                  MultilineFunction->None], "(", "t", ")"}], "2"]}], "-", 
              RowBox[{
               SuperscriptBox["\[Beta]", "\[Prime]\[Prime]",
                MultilineFunction->None], "(", "t", ")"}]}], ")"}]}], "-", 
           RowBox[{
            RowBox[{"c", "(", 
             RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
            RowBox[{"s", "(", 
             RowBox[{"\[Gamma]", "(", "t", ")"}], ")"}], " ", 
            RowBox[{
             SuperscriptBox[
              SubscriptBox["y", "1"], "\[Prime]\[Prime]",
              MultilineFunction->None], "(", "t", ")"}]}], "-", 
           RowBox[{
            RowBox[{"c", "(", 
             RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
            RowBox[{"c", "(", 
             RowBox[{"\[Gamma]", "(", "t", ")"}], ")"}], " ", 
            RowBox[{
             SuperscriptBox[
              SubscriptBox["x", "1"], "\[Prime]\[Prime]",
              MultilineFunction->None], "(", "t", ")"}]}], "-", 
           RowBox[{"g", " ", 
            RowBox[{"s", "(", 
             RowBox[{"\[Beta]", "(", "t", ")"}], ")"}]}], "-", 
           RowBox[{
            RowBox[{"s", "(", 
             RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
            RowBox[{
             SuperscriptBox[
              SubscriptBox["z", "1"], "\[Prime]\[Prime]",
              MultilineFunction->None], "(", "t", ")"}]}]}], ")"}]}]},
       {
        RowBox[{
         SubscriptBox["l", "1"], " ", 
         SubscriptBox["m", "p"], " ", 
         RowBox[{"(", 
          RowBox[{"-", 
           RowBox[{"s", "(", 
            RowBox[{"\[Beta]", "(", "t", ")"}], ")"}]}], ")"}], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SubscriptBox["l", "1"], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"2", " ", 
               RowBox[{"c", "(", 
                RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
               RowBox[{
                SuperscriptBox["\[Beta]", "\[Prime]",
                 MultilineFunction->None], "(", "t", ")"}], " ", 
               RowBox[{
                SuperscriptBox["\[Gamma]", "\[Prime]",
                 MultilineFunction->None], "(", "t", ")"}]}], "+", 
              RowBox[{
               RowBox[{"s", "(", 
                RowBox[{"\[Beta]", "(", "t", ")"}], ")"}], " ", 
               RowBox[{
                SuperscriptBox["\[Gamma]", "\[Prime]\[Prime]",
                 MultilineFunction->None], "(", "t", ")"}]}]}], ")"}]}], "+", 
           RowBox[{
            RowBox[{"c", "(", 
             RowBox[{"\[Gamma]", "(", "t", ")"}], ")"}], " ", 
            RowBox[{
             SuperscriptBox[
              SubscriptBox["y", "1"], "\[Prime]\[Prime]",
              MultilineFunction->None], "(", "t", ")"}]}], "-", 
           RowBox[{
            RowBox[{"s", "(", 
             RowBox[{"\[Gamma]", "(", "t", ")"}], ")"}], " ", 
            RowBox[{
             SuperscriptBox[
              SubscriptBox["x", "1"], "\[Prime]\[Prime]",
              MultilineFunction->None], "(", "t", ")"}]}]}], ")"}]}]}
      },
      GridBoxAlignment->{
       "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, 
        "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
      GridBoxSpacings->{"Columns" -> {
          Offset[0.27999999999999997`], {
           Offset[0.5599999999999999]}, 
          Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
          Offset[0.2], {
           Offset[0.4]}, 
          Offset[0.2]}, "RowsIndexed" -> {}}],
     Column], "\[NoBreak]", ")"}],
   Function[BoxForm`e$, 
    MatrixForm[BoxForm`e$]]], TraditionalForm]], "Output",
 CellChangeTimes->{3.7104713754889555`*^9, 3.7104714850984116`*^9, 
  3.7104715456635637`*^9, 3.710471673265482*^9}]
}, Open  ]],

Cell[" ", "Text",
 Editable->False,
 Selectable->False,
 CellFrame->{{0, 0}, {0, 0.5}},
 ShowCellBracket->False,
 CellMargins->{{0, 0}, {1, 1}},
 CellElementSpacings->{"CellMinHeight"->1},
 CellFrameMargins->0,
 CellFrameColor->RGBColor[0, 0, 1],
 CellSize->{Inherited, 3}],

Cell[BoxData[{
 RowBox[{"Fthrust", "=", 
  RowBox[{"(", GridBox[{
     {"0"},
     {"0"},
     {
      RowBox[{
       SubscriptBox["Thrust", "1"], "+", 
       SubscriptBox["Thrust", "2"], "+", 
       SubscriptBox["Thrust", "3"], "+", 
       SubscriptBox["Thrust", "4"]}]}
    }], ")"}]}], "\[IndentingNewLine]", 
 RowBox[{"(", 
  RowBox[{
   SubscriptBox["Q", "1"], "=", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        OverscriptBox[
         SubscriptBox["R", "B"], "I"], ".", "Fthrust"}], ")"}], " ", "[", 
      RowBox[{"[", 
       RowBox[{"1", ",", "1"}], "]"}], "]"}], 
     RowBox[{"(*", 
      SubscriptBox["X", "I"], "*)"}], "//", "Flatten"}], "//", 
    "MatrixForm"}]}], ")"}], "\[IndentingNewLine]", 
 RowBox[{"(", 
  RowBox[{
   SubscriptBox["Q", "2"], "=", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        OverscriptBox[
         SubscriptBox["R", "B"], "I"], ".", "Fthrust"}], ")"}], "[", 
      RowBox[{"[", 
       RowBox[{"2", ",", "1"}], "]"}], "]"}], 
     RowBox[{"(*", 
      SubscriptBox["Y", "I"], "*)"}], "//", "Flatten"}], "//", 
    "MatrixForm"}]}], ")"}], "\[IndentingNewLine]", 
 RowBox[{"(", 
  RowBox[{
   SubscriptBox["Q", "3"], "=", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        OverscriptBox[
         SubscriptBox["R", "B"], "I"], ".", "Fthrust"}], ")"}], "[", 
      RowBox[{"[", 
       RowBox[{"3", ",", "1"}], "]"}], "]"}], 
     RowBox[{"(*", 
      SubscriptBox["Z", "I"], "*)"}], "//", "Flatten"}], "//", 
    "MatrixForm"}]}], ")"}], "\[IndentingNewLine]", 
 RowBox[{"(", 
  RowBox[{
   SubscriptBox["Q", "4"], "=", 
   RowBox[{
    RowBox[{
     SubscriptBox["l", "1"], 
     RowBox[{"(", 
      RowBox[{
       SubscriptBox["Thrust", "4"], "-", 
       SubscriptBox["Thrust", "2"]}], ")"}]}], "//", "MatrixForm"}]}], 
  ")"}], "\[IndentingNewLine]", 
 RowBox[{"(", 
  RowBox[{
   SubscriptBox["Q", "5"], "=", 
   RowBox[{
    RowBox[{
     SubscriptBox["l", "1"], 
     RowBox[{"(", 
      RowBox[{
       SubscriptBox["Thrust", "3"], "-", 
       SubscriptBox["Thrust", "1"]}], ")"}]}], "//", "MatrixForm"}]}], 
  ")"}], "\[IndentingNewLine]", 
 RowBox[{"(", 
  RowBox[{
   SubscriptBox["Q", "6"], "=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      SubscriptBox["MotorMoment", "1"], "-", 
      SubscriptBox["MotorMoment", "2"], "+", 
      SubscriptBox["MotorMoment", "3"], "-", 
      SubscriptBox["MotorMoment", "4"]}], ")"}], "//", "MatrixForm"}]}], 
  ")"}], "\[IndentingNewLine]"}], "Input",
 CellChangeTimes->{{3.710429542735423*^9, 3.7104295436634464`*^9}}],

Cell[BoxData[
 RowBox[{
  SubscriptBox["Q", "13"], "=", 
  RowBox[{
   SubscriptBox["Q", "14"], "=", "0"}]}]], "Input",
 CellChangeTimes->{{3.710472330210846*^9, 3.710472337398613*^9}}],

Cell["limited cases tests :", "Text",
 CellChangeTimes->{{3.710429456084013*^9, 3.7104294781879168`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"quadEqNominal", "/.", 
      RowBox[{
       SubscriptBox["\[Psi]", "1"], "\[Rule]", "0"}]}], "/.", 
     RowBox[{
      SubscriptBox["\[Theta]", "1"], "\[Rule]", "0"}]}], "//", "MatrixForm"}],
    "//", "TraditionalForm"}], "\[IndentingNewLine]"}]], "Input",
 CellChangeTimes->{3.71042948098398*^9}],

Cell[CellGroupData[{

Cell["quad linear velocity", "Section",
 CellChangeTimes->{{3.710467258551229*^9, 3.7104672635005136`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  SubscriptBox["X", "1"], "//", "Flatten"}]], "Input",
 CellChangeTimes->{{3.710467374723513*^9, 3.7104673833082037`*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{
    SubscriptBox["x", "1"], "[", "t", "]"}], ",", 
   RowBox[{
    SubscriptBox["y", "1"], "[", "t", "]"}], ",", 
   RowBox[{
    SubscriptBox["z", "1"], "[", "t", "]"}]}], "}"}]], "Output",
 CellChangeTimes->{{3.7104673720207195`*^9, 3.7104673837615047`*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      SuperscriptBox[
       SubscriptBox["V", "tr"], "2"], "==", 
      RowBox[{
       RowBox[{"D", "[", 
        RowBox[{
         RowBox[{
          SubscriptBox["X", "1"], "//", "Flatten"}], ",", "t"}], "]"}], ".", 
       RowBox[{"D", "[", 
        RowBox[{
         RowBox[{
          SubscriptBox["X", "1"], "//", "Flatten"}], ",", "t"}], "]"}]}]}], "//",
      "Simplify"}], ")"}], "//", "TraditionalForm"}], "//", 
  "MatrixForm"}]], "Input",
 CellChangeTimes->{{3.710467269616567*^9, 3.7104673468910613`*^9}, {
  3.7104673901457357`*^9, 3.710467392750463*^9}, {3.710467481721449*^9, 
  3.7104675068104677`*^9}, {3.7104675668282576`*^9, 3.710467567230523*^9}}],

Cell[BoxData[
 TagBox[
  TagBox[
   FormBox[
    RowBox[{
     SubsuperscriptBox["V", "tr", "2"], "\[LongEqual]", 
     RowBox[{
      SuperscriptBox[
       RowBox[{
        SuperscriptBox[
         SubscriptBox["x", "1"], "\[Prime]",
         MultilineFunction->None], "(", "t", ")"}], "2"], "+", 
      SuperscriptBox[
       RowBox[{
        SuperscriptBox[
         SubscriptBox["y", "1"], "\[Prime]",
         MultilineFunction->None], "(", "t", ")"}], "2"], "+", 
      SuperscriptBox[
       RowBox[{
        SuperscriptBox[
         SubscriptBox["z", "1"], "\[Prime]",
         MultilineFunction->None], "(", "t", ")"}], "2"]}]}],
    TraditionalForm],
   TraditionalForm,
   Editable->True],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{{3.710467278893715*^9, 3.710467347296328*^9}, 
   3.710467392996626*^9, {3.71046749106164*^9, 3.710467507613*^9}, 
   3.7104675679389944`*^9}]
}, Open  ]],

Cell[TextData[{
 "translational veocity : ",
 Cell[BoxData[
  SubscriptBox["V", "tr"]], "Input"],
 "\nrotational velocity around C.G : ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["V", "rot"], TraditionalForm]],
  FormatType->"TraditionalForm"]
}], "Text",
 CellChangeTimes->{{3.7104674178681145`*^9, 3.7104674388360167`*^9}, {
  3.710467691944372*^9, 3.7104676963963203`*^9}}],

Cell[BoxData[
 RowBox[{
  SuperscriptBox[
   SubscriptBox["V", "rot"], "2"], "\[Equal]", 
  RowBox[{
   SuperscriptBox[
    SubscriptBox["\[Omega]", 
     RowBox[{"C", ".", "G"}]], "T"], 
   SubscriptBox["I", 
    RowBox[{"C", ".", "G"}]], " ", 
   SubscriptBox["\[Omega]", 
    RowBox[{"C", ".", "G"}]]}]}]], "Input",
 CellChangeTimes->{{3.7104674093544703`*^9, 3.7104674286242476`*^9}, {
  3.7104676377012453`*^9, 3.710467667473982*^9}, {3.710467946461438*^9, 
  3.710467976756521*^9}}],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.7104677383091073`*^9, 3.710467750926472*^9}, 
   3.7104679448273525`*^9}],

Cell[" ", "Text",
 Editable->False,
 Selectable->False,
 CellFrame->{{0, 0}, {0, 3}},
 ShowCellBracket->False,
 CellMargins->{{0, 0}, {1, 1}},
 CellElementSpacings->{"CellMinHeight"->1},
 CellFrameMargins->0,
 CellFrameColor->RGBColor[0, 0, 1],
 CellSize->{Inherited, 5}],

Cell["\<\
system assumptions for trimming to 2D :
\[Psi]=0
\[Phi]=0 (or \[Theta]=0 ??)
y=0 (-> ~ \[Phi]=0)
\[Gamma]=0
->
new trimmed rotation matrices

test cases are :
\
\>", "Text",
 CellChangeTimes->{{3.7105414490853662`*^9, 3.7105415122619667`*^9}, {
  3.7105415474719005`*^9, 3.710541557516119*^9}, {3.7105416338776255`*^9, 
  3.7105416429312534`*^9}, {3.7105416966226387`*^9, 3.7105417013741817`*^9}}],

Cell[BoxData[
 RowBox[{"trimSetting", " ", "=", " "}]], "Input",
 CellChangeTimes->{{3.710541651611442*^9, 3.710541657471597*^9}}]
}, Open  ]]
},
WindowSize->{1350, 685},
WindowMargins->{{-8, Automatic}, {Automatic, 0}},
PrintingCopies->1,
PrintingPageRange->{32000, 32000},
PrintingOptions->{"Magnification"->1.,
"PaperOrientation"->"Portrait",
"PaperSize"->{612, 792}},
FrontEndVersion->"10.1 for Microsoft Windows (64-bit) (March 23, 2015)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[1464, 33, 124, 1, 30, "Text"],
Cell[1591, 36, 430, 10, 52, "Input"],
Cell[2024, 48, 341, 8, 52, "Input"],
Cell[2368, 58, 403, 9, 106, "Text"],
Cell[2774, 69, 175, 6, 87, "Text"],
Cell[2952, 77, 273, 9, 5, "Text"],
Cell[3228, 88, 96, 1, 30, "Text"],
Cell[CellGroupData[{
Cell[3349, 93, 2074, 75, 252, "Input"],
Cell[5426, 170, 933, 27, 63, "Output"],
Cell[6362, 199, 898, 24, 63, "Output"],
Cell[7263, 225, 267, 7, 31, "Output"],
Cell[7533, 234, 933, 27, 63, "Output"],
Cell[8469, 263, 900, 24, 63, "Output"],
Cell[9372, 289, 269, 7, 31, "Output"]
}, Open  ]],
Cell[9656, 299, 121, 2, 30, "Text"],
Cell[CellGroupData[{
Cell[9802, 305, 6021, 184, 444, "Input"],
Cell[15826, 491, 176, 4, 31, "Output"],
Cell[16005, 497, 176, 4, 31, "Output"],
Cell[16184, 503, 178, 4, 31, "Output"],
Cell[16365, 509, 1024, 29, 57, "Output"],
Cell[17392, 540, 1030, 29, 57, "Output"],
Cell[18425, 571, 1024, 29, 57, "Output"],
Cell[19452, 602, 3386, 96, 57, "Output"],
Cell[22841, 700, 579, 17, 31, "Output"],
Cell[23423, 719, 306, 8, 31, "Output"],
Cell[23732, 729, 178, 4, 31, "Output"],
Cell[23913, 735, 1309, 37, 57, "Output"],
Cell[25225, 774, 1614, 46, 57, "Output"],
Cell[26842, 822, 2227, 62, 57, "Output"],
Cell[29072, 886, 2627, 75, 57, "Output"],
Cell[31702, 963, 2627, 75, 57, "Output"],
Cell[34332, 1040, 1127, 33, 63, "Output"],
Cell[35462, 1075, 1125, 33, 63, "Output"]
}, Open  ]],
Cell[36602, 1111, 271, 9, 8, "Text"],
Cell[36876, 1122, 2689, 80, 151, "Input"],
Cell[CellGroupData[{
Cell[39590, 1206, 2133, 58, 80, "Input"],
Cell[41726, 1266, 1667, 47, 63, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[43430, 1318, 477, 13, 31, "Input"],
Cell[43910, 1333, 3240, 85, 63, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[47187, 1423, 454, 14, 47, "Input"],
Cell[47644, 1439, 2517, 71, 48, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[50198, 1515, 621, 19, 47, "Input"],
Cell[50822, 1536, 3387, 96, 51, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[54246, 1637, 379, 10, 33, "Input"],
Cell[54628, 1649, 3746, 105, 35, "Output"]
}, Open  ]],
Cell[58389, 1757, 271, 9, 8, "Text"],
Cell[58663, 1768, 93, 1, 30, "Text"],
Cell[CellGroupData[{
Cell[58781, 1773, 2421, 73, 128, "Input"],
Cell[61205, 1848, 525, 17, 31, "Output"],
Cell[61733, 1867, 525, 17, 31, "Output"],
Cell[62261, 1886, 9563, 277, 160, "Output"],
Cell[71827, 2165, 633, 21, 31, "Output"],
Cell[72463, 2188, 10141, 297, 190, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[82641, 2490, 1062, 27, 87, "Input"],
Cell[83706, 2519, 3187, 93, 82, "Output"],
Cell[86896, 2614, 246, 6, 31, "Output"],
Cell[87145, 2622, 3322, 98, 82, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[90504, 2725, 722, 32, 223, "Input"],
Cell[91229, 2759, 991, 32, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[92257, 2796, 95, 1, 31, "Input"],
Cell[92355, 2799, 10189, 298, 190, "Output"]
}, Open  ]],
Cell[102559, 3100, 84, 1, 31, "Input"],
Cell[CellGroupData[{
Cell[102668, 3105, 1835, 47, 52, "Input"],
Cell[104506, 3154, 40269, 1034, 338, "Output"]
}, Open  ]],
Cell[144790, 4191, 273, 9, 5, "Text"],
Cell[145066, 4202, 2630, 90, 246, "Input"],
Cell[147699, 4294, 185, 5, 31, "Input"],
Cell[147887, 4301, 105, 1, 30, "Text"],
Cell[147995, 4304, 374, 11, 52, "Input"],
Cell[CellGroupData[{
Cell[148394, 4319, 107, 1, 70, "Section"],
Cell[CellGroupData[{
Cell[148526, 4324, 146, 3, 31, "Input"],
Cell[148675, 4329, 312, 9, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[149024, 4343, 749, 21, 33, "Input"],
Cell[149776, 4366, 927, 29, 31, "Output"]
}, Open  ]],
Cell[150718, 4398, 377, 11, 50, "Text"],
Cell[151098, 4411, 488, 14, 31, "Input"],
Cell[151589, 4427, 122, 2, 31, "Input"],
Cell[151714, 4431, 271, 9, 10, "Text"],
Cell[151988, 4442, 407, 14, 201, "Text"],
Cell[152398, 4458, 130, 2, 31, "Input"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature kxTjeMWzytWgWA1GEOkYj4AZ *)
