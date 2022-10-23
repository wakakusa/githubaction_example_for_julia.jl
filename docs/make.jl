using githubaction_example_for_julia
using Documenter

DocMeta.setdocmeta!(githubaction_example_for_julia, :DocTestSetup, :(using githubaction_example_for_julia); recursive=true)

makedocs(;
    modules=[githubaction_example_for_julia],
    authors="wakakusa",
    repo="https://github.com/wakakusa/githubaction_example_for_julia.jl/blob/{commit}{path}#{line}",
    sitename="githubaction_example_for_julia.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://wakakusa.github.io/githubaction_example_for_julia.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/wakakusa/githubaction_example_for_julia.jl",
    devbranch="main",
)
