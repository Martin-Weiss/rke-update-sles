#!/bin/bash

# current base channel
#spacecmd {SSM:0}> system_listbasechannel rke-test-master-01.suse

# current child channels
#spacecmd {SSM:0}> system_listchildchannels rke-test-master-01.suse

SYSTEM="rke-test-master-01.suse"
OLD_BASE_CHANNEL="$(spacecmd -q -- system_listbasechannel $SYSTEM)"
OLD_CHILD_CHANNELS="$(spacecmd -q -- system_listchildchannels $SYSTEM)"

NEW_BASE_CHANNEL="$(echo $OLD_BASE_CHANNEL|sed 's/-prod-/-test-/g')"
NEW_CHILD_CHANNELS="$(echo $OLD_CHILD_CHANNELS|sed 's/-prod-/-test-/g')"

echo spacecmd -q -y -- system_schedulechangechannels $SYSTEM -b $NEW_BASE_CHANNEL $(for CHANNEL in $NEW_CHILD_CHANNELS; do echo " -c $CHANNEL "; done)

