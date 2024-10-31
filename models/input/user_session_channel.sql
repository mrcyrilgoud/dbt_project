select
    userId,
    sessionId,
    channel
from
    {{ source('raw_data', 'user_session_channel') }}
where
    sessionId is not null