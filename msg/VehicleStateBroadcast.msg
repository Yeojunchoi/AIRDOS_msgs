uint64 timestamp
int16  droneid

uint8 nav_state
uint8 arming_state
uint8 hil_state
uint8 system_id
uint8 component_id
uint8 vehicle_type
uint64 armed_time #arming time (microseconds)

#----------VehicleStatus-----------

bool landed

#----------VehiclelLandDetected------


float64 lat			# Latitude, (degrees)
float64 lon			# Longitude, (degrees)
float32 alt			# Altitude AMSL, (meters)
float32 alt_ellipsoid		# Altitude above ellipsoid, (meters)
float32 terrain_alt		# WGS84 terrain altitude

float32 delta_alt 

float32 eph

#--------VehicleGlobalPosition------------
