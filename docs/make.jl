using ArnoTester
using Documenter

DocMeta.setdocmeta!(ArnoTester, :DocTestSetup, :(using ArnoTester); recursive=true)

makedocs(;
    modules=[ArnoTester],
    authors="ArnoStrouwen <arno.strouwen@telenet.be> and contributors",
    repo="https://github.com/ArnoStrouwen/ArnoTester.jl/blob/{commit}{path}#{line}",
    sitename="ArnoTester.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://ArnoStrouwen.github.io/ArnoTester.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/ArnoStrouwen/ArnoTester.jl",
    devbranch="master",
)
