if 'transformer' not in globals():
    from mage_ai.data_preparation.decorators import transformer
if 'test' not in globals():
    from mage_ai.data_preparation.decorators import test


@transformer
def transform(data, *args, **kwargs):
    data = data[(data.passenger_count > 0)] #clearing out rows where trip_distance = 0 
    data = data[(data.trip_distance > 0)]  # and passenger_count = 0
    new_cols = [col.lower() for col in data.columns]
    new_cols = [col.replace(' ', '_') for col in new_cols]
    data.columns = new_cols
    return data


@test
def test_output(output, *args) -> None:
    """
    Template code for testing the output of the block.
    """
    assert output[(output.passenger_count == 0) & (output.trip_distance == 0)] is not None, 'The output is undefined'
