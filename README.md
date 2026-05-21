# dg-thesis-code

MATLAB code associated with my PhD thesis on distance geometry and protein structure reconstruction.

This repository is kept as a historical research codebase. It contains prototype implementations and numerical routines developed during the thesis work. Parts of this material were later superseded by more recent C implementations, especially in [`bpbm-3d-iddgp`](https://github.com/wdarocha/bpbm-3d-iddgp).

## Maintenance Status

This repository is preserved mainly as thesis-associated historical code and is not maintained with the same level of care as the newer C implementations.

If you need clarification about the code, data layout, or expected behavior, please contact me by email:

```text
wdarocha [at] ime.unicamp.br
```

The functionality in this repository is being migrated progressively to better structured C code.

- The `iBP` implementation from this MATLAB repository is already available in the C repository [`bpbm-3d-iddgp`](https://github.com/wdarocha/bpbm-3d-iddgp).
- In the newer C repository, the corresponding implementation was renamed to `iTBP`.
- The `iTBP` function in this MATLAB thesis repository is not the same as the `iTBP` implementation currently available in the C repository.
- The MATLAB `iTBP` functionality has not yet been fully reimplemented in C, but this migration is in progress.

## Scope

The repository currently includes:

- MATLAB implementations of `iBP` and `iTBP`
- helper routines for interval manipulation, torsion-angle computations, and vertex ordering
- a thesis-era experiment script for comparing `iTBP` and `iBP`

## Repository Layout

- `src/algorithms`: main algorithm implementations and branching routines
- `src/analysis`: quality metrics and result-reporting helpers
- `src/geometry`: geometric and torsion-angle routines
- `src/instances`: instance conversion and vertex-ordering helpers
- `src/intervals`: interval manipulation utilities
- `src/probability`: Gaussian intersection and combination helpers
- `scripts`: thesis-era experiment scripts
- `data`: thesis-era experiment inputs
- `scriptITBPVsIBP.m`: convenience wrapper for the main experiment script

## Usage Notes

This repository is provided primarily for archival and reference purposes.

- The repository includes thesis-era input data under `data/`.
- I no longer maintain an environment to validate the full MATLAB workflow end to end.
- The code is preserved to document the computational material used in the thesis.

## Running the Main Script

Add the repository source tree to the MATLAB path:

```matlab
run('startup.m');
```

Then run the main experiment script:

```matlab
run('scripts/scriptITBPVsIBP.m');
```

Alternatively, you may use the wrapper in the repository root:

```matlab
run('scriptITBPVsIBP.m');
```

In this setup:

- `scriptITBPVsIBP.m` in the repository root is only a lightweight entry-point wrapper.
- `scripts/scriptITBPVsIBP.m` contains the thesis-era experiment logic.

The script expects thesis-era input files under:

```text
data/<IDCODE>/eps_1_tau_40/
```

## Thesis Reference

This repository is associated with the following PhD thesis:

```text
da Rocha, Wagner Alan Aparecido. Ordenacao em vertices de grafos de proteinas.
2022. Tese (Doutorado em Matematica Aplicada) - Universidade Estadual de Campinas,
Instituto de Matematica, Estatistica e Computacao Cientifica, Campinas, SP, 2022.
```

Alternate title:

```text
A new vertex order for protein graphs
```

## Related Repositories

- Current C implementation of BP-based methods: <https://github.com/wdarocha/bpbm-3d-iddgp>
- Benchmark and experiment data: <https://github.com/wdarocha/benchmarks>

## Citation

If you reference this repository, cite it as thesis-associated computational material. Citation metadata is provided in `CITATION.cff`.
