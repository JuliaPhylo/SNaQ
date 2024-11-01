using SNaQ, PhyloNetworks
using Documenter

DocMeta.setdocmeta!(SNaQ, :DocTestSetup, :(using SNaQ, PhyloNetworks); recursive=true)

makedocs(;
    modules=[SNaQ],
    authors="Claudia Solis-Lemus <crsl4@users.noreply.github.com>, Cécile Ané <cecileane@users.noreply.github.com>, and contributors",
    sitename="SNaQ.jl",
    format=Documenter.HTML(;
        canonical="https://JuliaPhylo.github.io/SNaQ.jl",
        edit_link="dev",
        assets=String[],
        prettyurls = get(ENV, "CI", nothing) == "true", # easier local build
        size_threshold = 600 * 2^10,
        size_threshold_warn = 500 * 2^10, # 600 KiB
    ),
    # exception, so warning-only for :missing_docs. List all others:
    warnonly = Documenter.except(:autodocs_block, :cross_references, :docs_block,
        :doctest, :eval_block, :example_block, :footnote, :linkcheck_remotes,
        :linkcheck, :meta_block, :parse_error, :setup_block),
    pages=[
        "Home" => "index.md",
        "Manual" => [
            "Input Data for SNaQ" => "man/inputdata.md",
            "TICR pipeline" => "man/ticr_howtogetQuartetCFs.md",
            "Network estimation and display" => "man/snaq_plot.md",
            "Network comparison and manipulation" => "man/dist_reroot.md",
            "Candidate Networks" => "man/fixednetworkoptim.md",
            "Extract Expected CFs" => "man/expectedCFs.md",
            "Bootstrap" => "man/bootstrap.md",
            "Multiple Alleles" => "man/multiplealleles.md",
        ],
        "Library" => [
            "Public" => "lib/public.md",
            "Internals" => "lib/internals.md",
        ]
    ],
)

deploydocs(;
    repo="github.com/JuliaPhylo/SNaQ.jl",
    push_preview = true,
    devbranch="main",
)
