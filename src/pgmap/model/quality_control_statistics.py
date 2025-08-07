import typing


class QualityControlStatistics(typing.NamedTuple):
    """
    TODO docs
    A single paired read containing a candidate for counting.

    Attributes:
        gRNA1_candidate (str): The candidate gRNA1.
        gRNA2_candidate (str): The candidate gRNA2.
        barcode_candidate (str): The candidate barcode.
    """
    total_reads: int
    discard_rate: float
    gRNA1_mismatch_rate: float
    gRNA2_mismatch_rate: float
    barcode_mismatch_rate: float
    estimated_recombination_rate: float
    gRNA1_distance_mean: float
    gRNA2_distance_mean: float
    barcode_distance_mean: float
    gRNA1_distance_variance: float
    gRNA2_distance_variance: float
    barcode_distance_variance: float
