from helpers.import_utils import import_non_local
# Load using non-local to avoid loading up local decimal module.
decimal_std = import_non_local('decimal')

# Set up decimal context
decimal_std.getcontext().rounding=decimal_std.ROUND_HALF_UP
decimal_std.getcontext().prec=2

# Import Decimal into local namespace
Decimal = decimal_std.Decimal

# Remove standard decimal module
del decimal_std
