CardiacMyocytes-Koivumaki_2011
==========================

Reference Publication
---------------------

* Koivumäki JT, Korhonen T, Tavi P. Impact of sarcoplasmic reticulum calcium release on calcium dynamics and action potential morphology in human atrial myocytes: a computational study. *PLoS Comput Biol*. 2011;7(1):e1001067. Published 2011 Jan 27. doi:[10.1371/journal.pcbi.1001067](https://doi.org/10.1371/journal.pcbi.1001067) PMID: [21298076](https://pubmed.ncbi.nlm.nih.gov/21298076/)

Model Files
-----------

* `Koivumaki-2011.em`
  
  * A model using custom `Process`. Just execute `$ make`to build cpp files.
  
  * `Koivumaki-2011.em` includes following sub-model files:
    * `Koivumaki-2011_Cell_Membrane.em`
      * describes `System:/Cell:Membrane`
    * `Koivumaki-2011_Cell_Cytoplasm_bulk_x.em`
      * describes `System:/Cell/Cytoplasm:ss`, `System:/Cell/Cytoplasm:bulk_1`, `System:/Cell/Cytoplasm:bulk_2`, `System:/Cell/Cytoplasm:bulk_3`, `System:/Cell/Cytoplasm:bulk_4`
    * `Koivumaki-2011_Cell_SR_x.em`
      * describes `System:/Cell:SR_1`, `System:/Cell:SR_2`, `System:/Cell:SR_3`, `System:/Cell:SR_4`
  
* `Koivumaki-2011_pp.em`

  * Pre-processed EM file, which is generated the following command:

    ```bash
    $ ecell3-em2eml -E ./Koivumaki-2011.em > Koivumaki-2011_pp.em
    ```

  * This file is loaded in ecell3-jupyter notebook `Koivumaki-2011.ipynb`.

References
-----------

* GitHub [ecell3-models](https://github.com/ecell3-models)/**[CardiacMyocytes-Nygren_1998](https://github.com/ecell3-models/CardiacMyocytes-Nygren_1998)**
* GitHub [jvbrink](https://github.com/jvbrink)/**[atriapace](https://github.com/jvbrink/atriapace)**

