function ws
	wolframscript -code (printf "UnitSimplify[SemanticInterpretation[\"")$argv(printf "\"]]")
end
