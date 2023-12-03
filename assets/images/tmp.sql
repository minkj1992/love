-- ALTER TABLE pipeline_batch_run
-- ADD COLUMN user_id BIGINT;

-- ALTER TABLE pipeline_batch_run
-- ADD INDEX user_id_index (user_id);

UPDATE pipeline_batch_run
INNER JOIN pipeline_snapshot 
ON pipeline_batch_run.pipeline_snapshot_id = pipeline_snapshot.id
SET pipeline_batch_run.user_id = pipeline_snapshot.user_id;