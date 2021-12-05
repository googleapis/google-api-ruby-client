# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module SpannerV1
      
      # A backup of a Cloud Spanner database.
      class Backup
        include Google::Apis::Core::Hashable
      
        # Output only. The time the CreateBackup request is received. If the request
        # does not specify `version_time`, the `version_time` of the backup will be
        # equivalent to the `create_time`.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required for the CreateBackup operation. Name of the database from which this
        # backup was created. This needs to be in the same instance as the backup.
        # Values are of the form `projects//instances//databases/`.
        # Corresponds to the JSON property `database`
        # @return [String]
        attr_accessor :database
      
        # Encryption information for a Cloud Spanner database or backup.
        # Corresponds to the JSON property `encryptionInfo`
        # @return [Google::Apis::SpannerV1::EncryptionInfo]
        attr_accessor :encryption_info
      
        # Required for the CreateBackup operation. The expiration time of the backup,
        # with microseconds granularity that must be at least 6 hours and at most 366
        # days from the time the CreateBackup request is processed. Once the `
        # expire_time` has passed, the backup is eligible to be automatically deleted by
        # Cloud Spanner to free the resources used by the backup.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Output only for the CreateBackup operation. Required for the UpdateBackup
        # operation. A globally unique identifier for the backup which cannot be changed.
        # Values are of the form `projects//instances//backups/a-z*[a-z0-9]` The final
        # segment of the name must be between 2 and 60 characters in length. The backup
        # is stored in the location(s) specified in the instance configuration of the
        # instance containing the backup, identified by the prefix of the backup name of
        # the form `projects//instances/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The names of the restored databases that reference the backup.
        # The database names are of the form `projects//instances//databases/`.
        # Referencing databases may exist in different instances. The existence of any
        # referencing database prevents the backup from being deleted. When a restored
        # database from the backup enters the `READY` state, the reference to the backup
        # is removed.
        # Corresponds to the JSON property `referencingDatabases`
        # @return [Array<String>]
        attr_accessor :referencing_databases
      
        # Output only. Size of the backup in bytes.
        # Corresponds to the JSON property `sizeBytes`
        # @return [Fixnum]
        attr_accessor :size_bytes
      
        # Output only. The current state of the backup.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The backup will contain an externally consistent copy of the database at the
        # timestamp specified by `version_time`. If `version_time` is not specified, the
        # system will set `version_time` to the `create_time` of the backup.
        # Corresponds to the JSON property `versionTime`
        # @return [String]
        attr_accessor :version_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @database = args[:database] if args.key?(:database)
          @encryption_info = args[:encryption_info] if args.key?(:encryption_info)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @name = args[:name] if args.key?(:name)
          @referencing_databases = args[:referencing_databases] if args.key?(:referencing_databases)
          @size_bytes = args[:size_bytes] if args.key?(:size_bytes)
          @state = args[:state] if args.key?(:state)
          @version_time = args[:version_time] if args.key?(:version_time)
        end
      end
      
      # Information about a backup.
      class BackupInfo
        include Google::Apis::Core::Hashable
      
        # Name of the backup.
        # Corresponds to the JSON property `backup`
        # @return [String]
        attr_accessor :backup
      
        # The time the CreateBackup request was received.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Name of the database the backup was created from.
        # Corresponds to the JSON property `sourceDatabase`
        # @return [String]
        attr_accessor :source_database
      
        # The backup contains an externally consistent copy of `source_database` at the
        # timestamp specified by `version_time`. If the CreateBackup request did not
        # specify `version_time`, the `version_time` of the backup is equivalent to the `
        # create_time`.
        # Corresponds to the JSON property `versionTime`
        # @return [String]
        attr_accessor :version_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup = args[:backup] if args.key?(:backup)
          @create_time = args[:create_time] if args.key?(:create_time)
          @source_database = args[:source_database] if args.key?(:source_database)
          @version_time = args[:version_time] if args.key?(:version_time)
        end
      end
      
      # The request for BatchCreateSessions.
      class BatchCreateSessionsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The number of sessions to be created in this batch call. The API may
        # return fewer than the requested number of sessions. If a specific number of
        # sessions are desired, the client can make additional calls to
        # BatchCreateSessions (adjusting session_count as necessary).
        # Corresponds to the JSON property `sessionCount`
        # @return [Fixnum]
        attr_accessor :session_count
      
        # A session in the Cloud Spanner API.
        # Corresponds to the JSON property `sessionTemplate`
        # @return [Google::Apis::SpannerV1::Session]
        attr_accessor :session_template
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @session_count = args[:session_count] if args.key?(:session_count)
          @session_template = args[:session_template] if args.key?(:session_template)
        end
      end
      
      # The response for BatchCreateSessions.
      class BatchCreateSessionsResponse
        include Google::Apis::Core::Hashable
      
        # The freshly created sessions.
        # Corresponds to the JSON property `session`
        # @return [Array<Google::Apis::SpannerV1::Session>]
        attr_accessor :session
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @session = args[:session] if args.key?(:session)
        end
      end
      
      # The request for BeginTransaction.
      class BeginTransactionRequest
        include Google::Apis::Core::Hashable
      
        # Transactions: Each session can have at most one active transaction at a time (
        # note that standalone reads and queries use a transaction internally and do
        # count towards the one transaction limit). After the active transaction is
        # completed, the session can immediately be re-used for the next transaction. It
        # is not necessary to create a new session for each transaction. Transaction
        # Modes: Cloud Spanner supports three transaction modes: 1. Locking read-write.
        # This type of transaction is the only way to write data into Cloud Spanner.
        # These transactions rely on pessimistic locking and, if necessary, two-phase
        # commit. Locking read-write transactions may abort, requiring the application
        # to retry. 2. Snapshot read-only. This transaction type provides guaranteed
        # consistency across several reads, but does not allow writes. Snapshot read-
        # only transactions can be configured to read at timestamps in the past.
        # Snapshot read-only transactions do not need to be committed. 3. Partitioned
        # DML. This type of transaction is used to execute a single Partitioned DML
        # statement. Partitioned DML partitions the key space and runs the DML statement
        # over each partition in parallel using separate, internal transactions that
        # commit independently. Partitioned DML transactions do not need to be committed.
        # For transactions that only read, snapshot read-only transactions provide
        # simpler semantics and are almost always faster. In particular, read-only
        # transactions do not take locks, so they do not conflict with read-write
        # transactions. As a consequence of not taking locks, they also do not abort, so
        # retry loops are not needed. Transactions may only read/write data in a single
        # database. They may, however, read/write data in different tables within that
        # database. Locking Read-Write Transactions: Locking transactions may be used to
        # atomically read-modify-write data anywhere in a database. This type of
        # transaction is externally consistent. Clients should attempt to minimize the
        # amount of time a transaction is active. Faster transactions commit with higher
        # probability and cause less contention. Cloud Spanner attempts to keep read
        # locks active as long as the transaction continues to do reads, and the
        # transaction has not been terminated by Commit or Rollback. Long periods of
        # inactivity at the client may cause Cloud Spanner to release a transaction's
        # locks and abort it. Conceptually, a read-write transaction consists of zero or
        # more reads or SQL statements followed by Commit. At any time before Commit,
        # the client can send a Rollback request to abort the transaction. Semantics:
        # Cloud Spanner can commit the transaction if all read locks it acquired are
        # still valid at commit time, and it is able to acquire write locks for all
        # writes. Cloud Spanner can abort the transaction for any reason. If a commit
        # attempt returns `ABORTED`, Cloud Spanner guarantees that the transaction has
        # not modified any user data in Cloud Spanner. Unless the transaction commits,
        # Cloud Spanner makes no guarantees about how long the transaction's locks were
        # held for. It is an error to use Cloud Spanner locks for any sort of mutual
        # exclusion other than between Cloud Spanner transactions themselves. Retrying
        # Aborted Transactions: When a transaction aborts, the application can choose to
        # retry the whole transaction again. To maximize the chances of successfully
        # committing the retry, the client should execute the retry in the same session
        # as the original attempt. The original session's lock priority increases with
        # each consecutive abort, meaning that each attempt has a slightly better chance
        # of success than the previous. Under some circumstances (for example, many
        # transactions attempting to modify the same row(s)), a transaction can abort
        # many times in a short period before successfully committing. Thus, it is not a
        # good idea to cap the number of retries a transaction can attempt; instead, it
        # is better to limit the total amount of time spent retrying. Idle Transactions:
        # A transaction is considered idle if it has no outstanding reads or SQL queries
        # and has not started a read or SQL query within the last 10 seconds. Idle
        # transactions can be aborted by Cloud Spanner so that they don't hold on to
        # locks indefinitely. If an idle transaction is aborted, the commit will fail
        # with error `ABORTED`. If this behavior is undesirable, periodically executing
        # a simple SQL query in the transaction (for example, `SELECT 1`) prevents the
        # transaction from becoming idle. Snapshot Read-Only Transactions: Snapshot read-
        # only transactions provides a simpler method than locking read-write
        # transactions for doing several consistent reads. However, this type of
        # transaction does not support writes. Snapshot transactions do not take locks.
        # Instead, they work by choosing a Cloud Spanner timestamp, then executing all
        # reads at that timestamp. Since they do not acquire locks, they do not block
        # concurrent read-write transactions. Unlike locking read-write transactions,
        # snapshot read-only transactions never abort. They can fail if the chosen read
        # timestamp is garbage collected; however, the default garbage collection policy
        # is generous enough that most applications do not need to worry about this in
        # practice. Snapshot read-only transactions do not need to call Commit or
        # Rollback (and in fact are not permitted to do so). To execute a snapshot
        # transaction, the client specifies a timestamp bound, which tells Cloud Spanner
        # how to choose a read timestamp. The types of timestamp bound are: - Strong (
        # the default). - Bounded staleness. - Exact staleness. If the Cloud Spanner
        # database to be read is geographically distributed, stale read-only
        # transactions can execute more quickly than strong or read-write transaction,
        # because they are able to execute far from the leader replica. Each type of
        # timestamp bound is discussed in detail below. Strong: Strong reads are
        # guaranteed to see the effects of all transactions that have committed before
        # the start of the read. Furthermore, all rows yielded by a single read are
        # consistent with each other -- if any part of the read observes a transaction,
        # all parts of the read see the transaction. Strong reads are not repeatable:
        # two consecutive strong read-only transactions might return inconsistent
        # results if there are concurrent writes. If consistency across reads is
        # required, the reads should be executed within a transaction or at an exact
        # read timestamp. See TransactionOptions.ReadOnly.strong. Exact Staleness: These
        # timestamp bounds execute reads at a user-specified timestamp. Reads at a
        # timestamp are guaranteed to see a consistent prefix of the global transaction
        # history: they observe modifications done by all transactions with a commit
        # timestamp less than or equal to the read timestamp, and observe none of the
        # modifications done by transactions with a larger commit timestamp. They will
        # block until all conflicting transactions that may be assigned commit
        # timestamps <= the read timestamp have finished. The timestamp can either be
        # expressed as an absolute Cloud Spanner commit timestamp or a staleness
        # relative to the current time. These modes do not require a "negotiation phase"
        # to pick a timestamp. As a result, they execute slightly faster than the
        # equivalent boundedly stale concurrency modes. On the other hand, boundedly
        # stale reads usually return fresher results. See TransactionOptions.ReadOnly.
        # read_timestamp and TransactionOptions.ReadOnly.exact_staleness. Bounded
        # Staleness: Bounded staleness modes allow Cloud Spanner to pick the read
        # timestamp, subject to a user-provided staleness bound. Cloud Spanner chooses
        # the newest timestamp within the staleness bound that allows execution of the
        # reads at the closest available replica without blocking. All rows yielded are
        # consistent with each other -- if any part of the read observes a transaction,
        # all parts of the read see the transaction. Boundedly stale reads are not
        # repeatable: two stale reads, even if they use the same staleness bound, can
        # execute at different timestamps and thus return inconsistent results.
        # Boundedly stale reads execute in two phases: the first phase negotiates a
        # timestamp among all replicas needed to serve the read. In the second phase,
        # reads are executed at the negotiated timestamp. As a result of the two phase
        # execution, bounded staleness reads are usually a little slower than comparable
        # exact staleness reads. However, they are typically able to return fresher
        # results, and are more likely to execute at the closest replica. Because the
        # timestamp negotiation requires up-front knowledge of which rows will be read,
        # it can only be used with single-use read-only transactions. See
        # TransactionOptions.ReadOnly.max_staleness and TransactionOptions.ReadOnly.
        # min_read_timestamp. Old Read Timestamps and Garbage Collection: Cloud Spanner
        # continuously garbage collects deleted and overwritten data in the background
        # to reclaim storage space. This process is known as "version GC". By default,
        # version GC reclaims versions after they are one hour old. Because of this,
        # Cloud Spanner cannot perform reads at read timestamps more than one hour in
        # the past. This restriction also applies to in-progress reads and/or SQL
        # queries whose timestamp become too old while executing. Reads and SQL queries
        # with too-old read timestamps fail with the error `FAILED_PRECONDITION`.
        # Partitioned DML Transactions: Partitioned DML transactions are used to execute
        # DML statements with a different execution strategy that provides different,
        # and often better, scalability properties for large, table-wide operations than
        # DML in a ReadWrite transaction. Smaller scoped statements, such as an OLTP
        # workload, should prefer using ReadWrite transactions. Partitioned DML
        # partitions the keyspace and runs the DML statement on each partition in
        # separate, internal transactions. These transactions commit automatically when
        # complete, and run independently from one another. To reduce lock contention,
        # this execution strategy only acquires read locks on rows that match the WHERE
        # clause of the statement. Additionally, the smaller per-partition transactions
        # hold locks for less time. That said, Partitioned DML is not a drop-in
        # replacement for standard DML used in ReadWrite transactions. - The DML
        # statement must be fully-partitionable. Specifically, the statement must be
        # expressible as the union of many statements which each access only a single
        # row of the table. - The statement is not applied atomically to all rows of the
        # table. Rather, the statement is applied atomically to partitions of the table,
        # in independent transactions. Secondary index rows are updated atomically with
        # the base table rows. - Partitioned DML does not guarantee exactly-once
        # execution semantics against a partition. The statement will be applied at
        # least once to each partition. It is strongly recommended that the DML
        # statement should be idempotent to avoid unexpected results. For instance, it
        # is potentially dangerous to run a statement such as `UPDATE table SET column =
        # column + 1` as it could be run multiple times against some rows. - The
        # partitions are committed automatically - there is no support for Commit or
        # Rollback. If the call returns an error, or if the client issuing the
        # ExecuteSql call dies, it is possible that some rows had the statement executed
        # on them successfully. It is also possible that statement was never executed
        # against other rows. - Partitioned DML transactions may only contain the
        # execution of a single DML statement via ExecuteSql or ExecuteStreamingSql. -
        # If any error is encountered during the execution of the partitioned DML
        # operation (for instance, a UNIQUE INDEX violation, division by zero, or a
        # value that cannot be stored due to schema constraints), then the operation is
        # stopped at that point and an error is returned. It is possible that at this
        # point, some partitions have been committed (or even committed multiple times),
        # and other partitions have not been run at all. Given the above, Partitioned
        # DML is good fit for large, database-wide, operations that are idempotent, such
        # as deleting old rows from a very large table.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::SpannerV1::TransactionOptions]
        attr_accessor :options
      
        # Common request options for various APIs.
        # Corresponds to the JSON property `requestOptions`
        # @return [Google::Apis::SpannerV1::RequestOptions]
        attr_accessor :request_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @options = args[:options] if args.key?(:options)
          @request_options = args[:request_options] if args.key?(:request_options)
        end
      end
      
      # Associates `members`, or principals, with a `role`.
      class Binding
        include Google::Apis::Core::Hashable
      
        # Represents a textual expression in the Common Expression Language (CEL) syntax.
        # CEL is a C-like expression language. The syntax and semantics of CEL are
        # documented at https://github.com/google/cel-spec. Example (Comparison): title:
        # "Summary size limit" description: "Determines if a summary is less than 100
        # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
        # Requestor is owner" description: "Determines if requestor is the document
        # owner" expression: "document.owner == request.auth.claims.email" Example (
        # Logic): title: "Public documents" description: "Determine whether the document
        # should be publicly visible" expression: "document.type != 'private' &&
        # document.type != 'internal'" Example (Data Manipulation): title: "Notification
        # string" description: "Create a notification string with a timestamp."
        # expression: "'New message received at ' + string(document.create_time)" The
        # exact variables and functions that may be referenced within an expression are
        # determined by the service that evaluates it. See the service documentation for
        # additional information.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::SpannerV1::Expr]
        attr_accessor :condition
      
        # Specifies the principals requesting access for a Cloud Platform resource. `
        # members` can have the following values: * `allUsers`: A special identifier
        # that represents anyone who is on the internet; with or without a Google
        # account. * `allAuthenticatedUsers`: A special identifier that represents
        # anyone who is authenticated with a Google account or a service account. * `
        # user:`emailid``: An email address that represents a specific Google account.
        # For example, `alice@example.com` . * `serviceAccount:`emailid``: An email
        # address that represents a service account. For example, `my-other-app@appspot.
        # gserviceaccount.com`. * `group:`emailid``: An email address that represents a
        # Google group. For example, `admins@example.com`. * `deleted:user:`emailid`?uid=
        # `uniqueid``: An email address (plus unique identifier) representing a user
        # that has been recently deleted. For example, `alice@example.com?uid=
        # 123456789012345678901`. If the user is recovered, this value reverts to `user:`
        # emailid`` and the recovered user retains the role in the binding. * `deleted:
        # serviceAccount:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a service account that has been recently deleted. For
        # example, `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`.
        # If the service account is undeleted, this value reverts to `serviceAccount:`
        # emailid`` and the undeleted service account retains the role in the binding. *
        # `deleted:group:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a Google group that has been recently deleted. For
        # example, `admins@example.com?uid=123456789012345678901`. If the group is
        # recovered, this value reverts to `group:`emailid`` and the recovered group
        # retains the role in the binding. * `domain:`domain``: The G Suite domain (
        # primary) that represents all the users of that domain. For example, `google.
        # com` or `example.com`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to the list of `members`, or principals. For example, `
        # roles/viewer`, `roles/editor`, or `roles/owner`.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @members = args[:members] if args.key?(:members)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # Metadata associated with a parent-child relationship appearing in a PlanNode.
      class ChildLink
        include Google::Apis::Core::Hashable
      
        # The node to which the link points.
        # Corresponds to the JSON property `childIndex`
        # @return [Fixnum]
        attr_accessor :child_index
      
        # The type of the link. For example, in Hash Joins this could be used to
        # distinguish between the build child and the probe child, or in the case of the
        # child being an output variable, to represent the tag associated with the
        # output variable.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Only present if the child node is SCALAR and corresponds to an output variable
        # of the parent node. The field carries the name of the output variable. For
        # example, a `TableScan` operator that reads rows from a table will have child
        # links to the `SCALAR` nodes representing the output variables created for each
        # column that is read by the operator. The corresponding `variable` fields will
        # be set to the variable names assigned to the columns.
        # Corresponds to the JSON property `variable`
        # @return [String]
        attr_accessor :variable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @child_index = args[:child_index] if args.key?(:child_index)
          @type = args[:type] if args.key?(:type)
          @variable = args[:variable] if args.key?(:variable)
        end
      end
      
      # The request for Commit.
      class CommitRequest
        include Google::Apis::Core::Hashable
      
        # The mutations to be executed when this transaction commits. All mutations are
        # applied atomically, in the order they appear in this list.
        # Corresponds to the JSON property `mutations`
        # @return [Array<Google::Apis::SpannerV1::Mutation>]
        attr_accessor :mutations
      
        # Common request options for various APIs.
        # Corresponds to the JSON property `requestOptions`
        # @return [Google::Apis::SpannerV1::RequestOptions]
        attr_accessor :request_options
      
        # If `true`, then statistics related to the transaction will be included in the
        # CommitResponse. Default value is `false`.
        # Corresponds to the JSON property `returnCommitStats`
        # @return [Boolean]
        attr_accessor :return_commit_stats
        alias_method :return_commit_stats?, :return_commit_stats
      
        # Transactions: Each session can have at most one active transaction at a time (
        # note that standalone reads and queries use a transaction internally and do
        # count towards the one transaction limit). After the active transaction is
        # completed, the session can immediately be re-used for the next transaction. It
        # is not necessary to create a new session for each transaction. Transaction
        # Modes: Cloud Spanner supports three transaction modes: 1. Locking read-write.
        # This type of transaction is the only way to write data into Cloud Spanner.
        # These transactions rely on pessimistic locking and, if necessary, two-phase
        # commit. Locking read-write transactions may abort, requiring the application
        # to retry. 2. Snapshot read-only. This transaction type provides guaranteed
        # consistency across several reads, but does not allow writes. Snapshot read-
        # only transactions can be configured to read at timestamps in the past.
        # Snapshot read-only transactions do not need to be committed. 3. Partitioned
        # DML. This type of transaction is used to execute a single Partitioned DML
        # statement. Partitioned DML partitions the key space and runs the DML statement
        # over each partition in parallel using separate, internal transactions that
        # commit independently. Partitioned DML transactions do not need to be committed.
        # For transactions that only read, snapshot read-only transactions provide
        # simpler semantics and are almost always faster. In particular, read-only
        # transactions do not take locks, so they do not conflict with read-write
        # transactions. As a consequence of not taking locks, they also do not abort, so
        # retry loops are not needed. Transactions may only read/write data in a single
        # database. They may, however, read/write data in different tables within that
        # database. Locking Read-Write Transactions: Locking transactions may be used to
        # atomically read-modify-write data anywhere in a database. This type of
        # transaction is externally consistent. Clients should attempt to minimize the
        # amount of time a transaction is active. Faster transactions commit with higher
        # probability and cause less contention. Cloud Spanner attempts to keep read
        # locks active as long as the transaction continues to do reads, and the
        # transaction has not been terminated by Commit or Rollback. Long periods of
        # inactivity at the client may cause Cloud Spanner to release a transaction's
        # locks and abort it. Conceptually, a read-write transaction consists of zero or
        # more reads or SQL statements followed by Commit. At any time before Commit,
        # the client can send a Rollback request to abort the transaction. Semantics:
        # Cloud Spanner can commit the transaction if all read locks it acquired are
        # still valid at commit time, and it is able to acquire write locks for all
        # writes. Cloud Spanner can abort the transaction for any reason. If a commit
        # attempt returns `ABORTED`, Cloud Spanner guarantees that the transaction has
        # not modified any user data in Cloud Spanner. Unless the transaction commits,
        # Cloud Spanner makes no guarantees about how long the transaction's locks were
        # held for. It is an error to use Cloud Spanner locks for any sort of mutual
        # exclusion other than between Cloud Spanner transactions themselves. Retrying
        # Aborted Transactions: When a transaction aborts, the application can choose to
        # retry the whole transaction again. To maximize the chances of successfully
        # committing the retry, the client should execute the retry in the same session
        # as the original attempt. The original session's lock priority increases with
        # each consecutive abort, meaning that each attempt has a slightly better chance
        # of success than the previous. Under some circumstances (for example, many
        # transactions attempting to modify the same row(s)), a transaction can abort
        # many times in a short period before successfully committing. Thus, it is not a
        # good idea to cap the number of retries a transaction can attempt; instead, it
        # is better to limit the total amount of time spent retrying. Idle Transactions:
        # A transaction is considered idle if it has no outstanding reads or SQL queries
        # and has not started a read or SQL query within the last 10 seconds. Idle
        # transactions can be aborted by Cloud Spanner so that they don't hold on to
        # locks indefinitely. If an idle transaction is aborted, the commit will fail
        # with error `ABORTED`. If this behavior is undesirable, periodically executing
        # a simple SQL query in the transaction (for example, `SELECT 1`) prevents the
        # transaction from becoming idle. Snapshot Read-Only Transactions: Snapshot read-
        # only transactions provides a simpler method than locking read-write
        # transactions for doing several consistent reads. However, this type of
        # transaction does not support writes. Snapshot transactions do not take locks.
        # Instead, they work by choosing a Cloud Spanner timestamp, then executing all
        # reads at that timestamp. Since they do not acquire locks, they do not block
        # concurrent read-write transactions. Unlike locking read-write transactions,
        # snapshot read-only transactions never abort. They can fail if the chosen read
        # timestamp is garbage collected; however, the default garbage collection policy
        # is generous enough that most applications do not need to worry about this in
        # practice. Snapshot read-only transactions do not need to call Commit or
        # Rollback (and in fact are not permitted to do so). To execute a snapshot
        # transaction, the client specifies a timestamp bound, which tells Cloud Spanner
        # how to choose a read timestamp. The types of timestamp bound are: - Strong (
        # the default). - Bounded staleness. - Exact staleness. If the Cloud Spanner
        # database to be read is geographically distributed, stale read-only
        # transactions can execute more quickly than strong or read-write transaction,
        # because they are able to execute far from the leader replica. Each type of
        # timestamp bound is discussed in detail below. Strong: Strong reads are
        # guaranteed to see the effects of all transactions that have committed before
        # the start of the read. Furthermore, all rows yielded by a single read are
        # consistent with each other -- if any part of the read observes a transaction,
        # all parts of the read see the transaction. Strong reads are not repeatable:
        # two consecutive strong read-only transactions might return inconsistent
        # results if there are concurrent writes. If consistency across reads is
        # required, the reads should be executed within a transaction or at an exact
        # read timestamp. See TransactionOptions.ReadOnly.strong. Exact Staleness: These
        # timestamp bounds execute reads at a user-specified timestamp. Reads at a
        # timestamp are guaranteed to see a consistent prefix of the global transaction
        # history: they observe modifications done by all transactions with a commit
        # timestamp less than or equal to the read timestamp, and observe none of the
        # modifications done by transactions with a larger commit timestamp. They will
        # block until all conflicting transactions that may be assigned commit
        # timestamps <= the read timestamp have finished. The timestamp can either be
        # expressed as an absolute Cloud Spanner commit timestamp or a staleness
        # relative to the current time. These modes do not require a "negotiation phase"
        # to pick a timestamp. As a result, they execute slightly faster than the
        # equivalent boundedly stale concurrency modes. On the other hand, boundedly
        # stale reads usually return fresher results. See TransactionOptions.ReadOnly.
        # read_timestamp and TransactionOptions.ReadOnly.exact_staleness. Bounded
        # Staleness: Bounded staleness modes allow Cloud Spanner to pick the read
        # timestamp, subject to a user-provided staleness bound. Cloud Spanner chooses
        # the newest timestamp within the staleness bound that allows execution of the
        # reads at the closest available replica without blocking. All rows yielded are
        # consistent with each other -- if any part of the read observes a transaction,
        # all parts of the read see the transaction. Boundedly stale reads are not
        # repeatable: two stale reads, even if they use the same staleness bound, can
        # execute at different timestamps and thus return inconsistent results.
        # Boundedly stale reads execute in two phases: the first phase negotiates a
        # timestamp among all replicas needed to serve the read. In the second phase,
        # reads are executed at the negotiated timestamp. As a result of the two phase
        # execution, bounded staleness reads are usually a little slower than comparable
        # exact staleness reads. However, they are typically able to return fresher
        # results, and are more likely to execute at the closest replica. Because the
        # timestamp negotiation requires up-front knowledge of which rows will be read,
        # it can only be used with single-use read-only transactions. See
        # TransactionOptions.ReadOnly.max_staleness and TransactionOptions.ReadOnly.
        # min_read_timestamp. Old Read Timestamps and Garbage Collection: Cloud Spanner
        # continuously garbage collects deleted and overwritten data in the background
        # to reclaim storage space. This process is known as "version GC". By default,
        # version GC reclaims versions after they are one hour old. Because of this,
        # Cloud Spanner cannot perform reads at read timestamps more than one hour in
        # the past. This restriction also applies to in-progress reads and/or SQL
        # queries whose timestamp become too old while executing. Reads and SQL queries
        # with too-old read timestamps fail with the error `FAILED_PRECONDITION`.
        # Partitioned DML Transactions: Partitioned DML transactions are used to execute
        # DML statements with a different execution strategy that provides different,
        # and often better, scalability properties for large, table-wide operations than
        # DML in a ReadWrite transaction. Smaller scoped statements, such as an OLTP
        # workload, should prefer using ReadWrite transactions. Partitioned DML
        # partitions the keyspace and runs the DML statement on each partition in
        # separate, internal transactions. These transactions commit automatically when
        # complete, and run independently from one another. To reduce lock contention,
        # this execution strategy only acquires read locks on rows that match the WHERE
        # clause of the statement. Additionally, the smaller per-partition transactions
        # hold locks for less time. That said, Partitioned DML is not a drop-in
        # replacement for standard DML used in ReadWrite transactions. - The DML
        # statement must be fully-partitionable. Specifically, the statement must be
        # expressible as the union of many statements which each access only a single
        # row of the table. - The statement is not applied atomically to all rows of the
        # table. Rather, the statement is applied atomically to partitions of the table,
        # in independent transactions. Secondary index rows are updated atomically with
        # the base table rows. - Partitioned DML does not guarantee exactly-once
        # execution semantics against a partition. The statement will be applied at
        # least once to each partition. It is strongly recommended that the DML
        # statement should be idempotent to avoid unexpected results. For instance, it
        # is potentially dangerous to run a statement such as `UPDATE table SET column =
        # column + 1` as it could be run multiple times against some rows. - The
        # partitions are committed automatically - there is no support for Commit or
        # Rollback. If the call returns an error, or if the client issuing the
        # ExecuteSql call dies, it is possible that some rows had the statement executed
        # on them successfully. It is also possible that statement was never executed
        # against other rows. - Partitioned DML transactions may only contain the
        # execution of a single DML statement via ExecuteSql or ExecuteStreamingSql. -
        # If any error is encountered during the execution of the partitioned DML
        # operation (for instance, a UNIQUE INDEX violation, division by zero, or a
        # value that cannot be stored due to schema constraints), then the operation is
        # stopped at that point and an error is returned. It is possible that at this
        # point, some partitions have been committed (or even committed multiple times),
        # and other partitions have not been run at all. Given the above, Partitioned
        # DML is good fit for large, database-wide, operations that are idempotent, such
        # as deleting old rows from a very large table.
        # Corresponds to the JSON property `singleUseTransaction`
        # @return [Google::Apis::SpannerV1::TransactionOptions]
        attr_accessor :single_use_transaction
      
        # Commit a previously-started transaction.
        # Corresponds to the JSON property `transactionId`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :transaction_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mutations = args[:mutations] if args.key?(:mutations)
          @request_options = args[:request_options] if args.key?(:request_options)
          @return_commit_stats = args[:return_commit_stats] if args.key?(:return_commit_stats)
          @single_use_transaction = args[:single_use_transaction] if args.key?(:single_use_transaction)
          @transaction_id = args[:transaction_id] if args.key?(:transaction_id)
        end
      end
      
      # The response for Commit.
      class CommitResponse
        include Google::Apis::Core::Hashable
      
        # Additional statistics about a commit.
        # Corresponds to the JSON property `commitStats`
        # @return [Google::Apis::SpannerV1::CommitStats]
        attr_accessor :commit_stats
      
        # The Cloud Spanner timestamp at which the transaction committed.
        # Corresponds to the JSON property `commitTimestamp`
        # @return [String]
        attr_accessor :commit_timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commit_stats = args[:commit_stats] if args.key?(:commit_stats)
          @commit_timestamp = args[:commit_timestamp] if args.key?(:commit_timestamp)
        end
      end
      
      # Additional statistics about a commit.
      class CommitStats
        include Google::Apis::Core::Hashable
      
        # The total number of mutations for the transaction. Knowing the `mutation_count`
        # value can help you maximize the number of mutations in a transaction and
        # minimize the number of API round trips. You can also monitor this value to
        # prevent transactions from exceeding the system [limit](https://cloud.google.
        # com/spanner/quotas#limits_for_creating_reading_updating_and_deleting_data). If
        # the number of mutations exceeds the limit, the server returns [
        # INVALID_ARGUMENT](https://cloud.google.com/spanner/docs/reference/rest/v1/Code#
        # ENUM_VALUES.INVALID_ARGUMENT).
        # Corresponds to the JSON property `mutationCount`
        # @return [Fixnum]
        attr_accessor :mutation_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mutation_count = args[:mutation_count] if args.key?(:mutation_count)
        end
      end
      
      # A message representing context for a KeyRangeInfo, including a label, value,
      # unit, and severity.
      class ContextValue
        include Google::Apis::Core::Hashable
      
        # A message representing a user-facing string whose value may need to be
        # translated before being displayed.
        # Corresponds to the JSON property `label`
        # @return [Google::Apis::SpannerV1::LocalizedString]
        attr_accessor :label
      
        # The severity of this context.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # The unit of the context value.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # The value for the context.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label = args[:label] if args.key?(:label)
          @severity = args[:severity] if args.key?(:severity)
          @unit = args[:unit] if args.key?(:unit)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Metadata type for the operation returned by CreateBackup.
      class CreateBackupMetadata
        include Google::Apis::Core::Hashable
      
        # The time at which cancellation of this operation was received. Operations.
        # CancelOperation starts asynchronous cancellation on a long-running operation.
        # The server makes a best effort to cancel the operation, but success is not
        # guaranteed. Clients can use Operations.GetOperation or other methods to check
        # whether the cancellation succeeded or whether the operation completed despite
        # cancellation. On successful cancellation, the operation is not deleted;
        # instead, it becomes an operation with an Operation.error value with a google.
        # rpc.Status.code of 1, corresponding to `Code.CANCELLED`.
        # Corresponds to the JSON property `cancelTime`
        # @return [String]
        attr_accessor :cancel_time
      
        # The name of the database the backup is created from.
        # Corresponds to the JSON property `database`
        # @return [String]
        attr_accessor :database
      
        # The name of the backup being created.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Encapsulates progress related information for a Cloud Spanner long running
        # operation.
        # Corresponds to the JSON property `progress`
        # @return [Google::Apis::SpannerV1::OperationProgress]
        attr_accessor :progress
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cancel_time = args[:cancel_time] if args.key?(:cancel_time)
          @database = args[:database] if args.key?(:database)
          @name = args[:name] if args.key?(:name)
          @progress = args[:progress] if args.key?(:progress)
        end
      end
      
      # Metadata type for the operation returned by CreateDatabase.
      class CreateDatabaseMetadata
        include Google::Apis::Core::Hashable
      
        # The database being created.
        # Corresponds to the JSON property `database`
        # @return [String]
        attr_accessor :database
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database = args[:database] if args.key?(:database)
        end
      end
      
      # The request for CreateDatabase.
      class CreateDatabaseRequest
        include Google::Apis::Core::Hashable
      
        # Required. A `CREATE DATABASE` statement, which specifies the ID of the new
        # database. The database ID must conform to the regular expression `a-z*[a-z0-9]`
        # and be between 2 and 30 characters in length. If the database ID is a
        # reserved word or if it contains a hyphen, the database ID must be enclosed in
        # backticks (`` ` ``).
        # Corresponds to the JSON property `createStatement`
        # @return [String]
        attr_accessor :create_statement
      
        # Encryption configuration for a Cloud Spanner database.
        # Corresponds to the JSON property `encryptionConfig`
        # @return [Google::Apis::SpannerV1::EncryptionConfig]
        attr_accessor :encryption_config
      
        # Optional. A list of DDL statements to run inside the newly created database.
        # Statements can create tables, indexes, etc. These statements execute
        # atomically with the creation of the database: if there is an error in any
        # statement, the database is not created.
        # Corresponds to the JSON property `extraStatements`
        # @return [Array<String>]
        attr_accessor :extra_statements
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_statement = args[:create_statement] if args.key?(:create_statement)
          @encryption_config = args[:encryption_config] if args.key?(:encryption_config)
          @extra_statements = args[:extra_statements] if args.key?(:extra_statements)
        end
      end
      
      # Metadata type for the operation returned by CreateInstance.
      class CreateInstanceMetadata
        include Google::Apis::Core::Hashable
      
        # The time at which this operation was cancelled. If set, this operation is in
        # the process of undoing itself (which is guaranteed to succeed) and cannot be
        # cancelled again.
        # Corresponds to the JSON property `cancelTime`
        # @return [String]
        attr_accessor :cancel_time
      
        # The time at which this operation failed or was completed successfully.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # An isolated set of Cloud Spanner resources on which databases can be hosted.
        # Corresponds to the JSON property `instance`
        # @return [Google::Apis::SpannerV1::Instance]
        attr_accessor :instance
      
        # The time at which the CreateInstance request was received.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cancel_time = args[:cancel_time] if args.key?(:cancel_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @instance = args[:instance] if args.key?(:instance)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # The request for CreateInstance.
      class CreateInstanceRequest
        include Google::Apis::Core::Hashable
      
        # An isolated set of Cloud Spanner resources on which databases can be hosted.
        # Corresponds to the JSON property `instance`
        # @return [Google::Apis::SpannerV1::Instance]
        attr_accessor :instance
      
        # Required. The ID of the instance to create. Valid identifiers are of the form `
        # a-z*[a-z0-9]` and must be between 2 and 64 characters in length.
        # Corresponds to the JSON property `instanceId`
        # @return [String]
        attr_accessor :instance_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance = args[:instance] if args.key?(:instance)
          @instance_id = args[:instance_id] if args.key?(:instance_id)
        end
      end
      
      # The request for CreateSession.
      class CreateSessionRequest
        include Google::Apis::Core::Hashable
      
        # A session in the Cloud Spanner API.
        # Corresponds to the JSON property `session`
        # @return [Google::Apis::SpannerV1::Session]
        attr_accessor :session
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @session = args[:session] if args.key?(:session)
        end
      end
      
      # A Cloud Spanner database.
      class Database
        include Google::Apis::Core::Hashable
      
        # Output only. If exists, the time at which the database creation started.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The read-write region which contains the database's leader
        # replicas. This is the same as the value of default_leader database option set
        # using DatabaseAdmin.CreateDatabase or DatabaseAdmin.UpdateDatabaseDdl. If not
        # explicitly set, this is empty.
        # Corresponds to the JSON property `defaultLeader`
        # @return [String]
        attr_accessor :default_leader
      
        # Output only. Earliest timestamp at which older versions of the data can be
        # read. This value is continuously updated by Cloud Spanner and becomes stale
        # the moment it is queried. If you are using this value to recover data, make
        # sure to account for the time from the moment when the value is queried to the
        # moment when you initiate the recovery.
        # Corresponds to the JSON property `earliestVersionTime`
        # @return [String]
        attr_accessor :earliest_version_time
      
        # Encryption configuration for a Cloud Spanner database.
        # Corresponds to the JSON property `encryptionConfig`
        # @return [Google::Apis::SpannerV1::EncryptionConfig]
        attr_accessor :encryption_config
      
        # Output only. For databases that are using customer managed encryption, this
        # field contains the encryption information for the database, such as encryption
        # state and the Cloud KMS key versions that are in use. For databases that are
        # using Google default or other types of encryption, this field is empty. This
        # field is propagated lazily from the backend. There might be a delay from when
        # a key version is being used and when it appears in this field.
        # Corresponds to the JSON property `encryptionInfo`
        # @return [Array<Google::Apis::SpannerV1::EncryptionInfo>]
        attr_accessor :encryption_info
      
        # Required. The name of the database. Values are of the form `projects//
        # instances//databases/`, where `` is as specified in the `CREATE DATABASE`
        # statement. This name can be passed to other API methods to identify the
        # database.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Information about the database restore.
        # Corresponds to the JSON property `restoreInfo`
        # @return [Google::Apis::SpannerV1::RestoreInfo]
        attr_accessor :restore_info
      
        # Output only. The current database state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The period in which Cloud Spanner retains all versions of data
        # for the database. This is the same as the value of version_retention_period
        # database option set using UpdateDatabaseDdl. Defaults to 1 hour, if not set.
        # Corresponds to the JSON property `versionRetentionPeriod`
        # @return [String]
        attr_accessor :version_retention_period
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @default_leader = args[:default_leader] if args.key?(:default_leader)
          @earliest_version_time = args[:earliest_version_time] if args.key?(:earliest_version_time)
          @encryption_config = args[:encryption_config] if args.key?(:encryption_config)
          @encryption_info = args[:encryption_info] if args.key?(:encryption_info)
          @name = args[:name] if args.key?(:name)
          @restore_info = args[:restore_info] if args.key?(:restore_info)
          @state = args[:state] if args.key?(:state)
          @version_retention_period = args[:version_retention_period] if args.key?(:version_retention_period)
        end
      end
      
      # Arguments to delete operations.
      class Delete
        include Google::Apis::Core::Hashable
      
        # `KeySet` defines a collection of Cloud Spanner keys and/or key ranges. All the
        # keys are expected to be in the same table or index. The keys need not be
        # sorted in any particular way. If the same key is specified multiple times in
        # the set (for example if two ranges, two keys, or a key and a range overlap),
        # Cloud Spanner behaves as if the key were only specified once.
        # Corresponds to the JSON property `keySet`
        # @return [Google::Apis::SpannerV1::KeySet]
        attr_accessor :key_set
      
        # Required. The table whose rows will be deleted.
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_set = args[:key_set] if args.key?(:key_set)
          @table = args[:table] if args.key?(:table)
        end
      end
      
      # A message representing a derived metric.
      class DerivedMetric
        include Google::Apis::Core::Hashable
      
        # A message representing a user-facing string whose value may need to be
        # translated before being displayed.
        # Corresponds to the JSON property `denominator`
        # @return [Google::Apis::SpannerV1::LocalizedString]
        attr_accessor :denominator
      
        # A message representing a user-facing string whose value may need to be
        # translated before being displayed.
        # Corresponds to the JSON property `numerator`
        # @return [Google::Apis::SpannerV1::LocalizedString]
        attr_accessor :numerator
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @denominator = args[:denominator] if args.key?(:denominator)
          @numerator = args[:numerator] if args.key?(:numerator)
        end
      end
      
      # A message representing the key visualizer diagnostic messages.
      class DiagnosticMessage
        include Google::Apis::Core::Hashable
      
        # A message representing a user-facing string whose value may need to be
        # translated before being displayed.
        # Corresponds to the JSON property `info`
        # @return [Google::Apis::SpannerV1::LocalizedString]
        attr_accessor :info
      
        # A message representing a user-facing string whose value may need to be
        # translated before being displayed.
        # Corresponds to the JSON property `metric`
        # @return [Google::Apis::SpannerV1::LocalizedString]
        attr_accessor :metric
      
        # Whether this message is specific only for the current metric. By default
        # Diagnostics are shown for all metrics, regardless which metric is the
        # currently selected metric in the UI. However occasionally a metric will
        # generate so many messages that the resulting visual clutter becomes
        # overwhelming. In this case setting this to true, will show the diagnostic
        # messages for that metric only if it is the currently selected metric.
        # Corresponds to the JSON property `metricSpecific`
        # @return [Boolean]
        attr_accessor :metric_specific
        alias_method :metric_specific?, :metric_specific
      
        # The severity of the diagnostic message.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # A message representing a user-facing string whose value may need to be
        # translated before being displayed.
        # Corresponds to the JSON property `shortMessage`
        # @return [Google::Apis::SpannerV1::LocalizedString]
        attr_accessor :short_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @info = args[:info] if args.key?(:info)
          @metric = args[:metric] if args.key?(:metric)
          @metric_specific = args[:metric_specific] if args.key?(:metric_specific)
          @severity = args[:severity] if args.key?(:severity)
          @short_message = args[:short_message] if args.key?(:short_message)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Encryption configuration for a Cloud Spanner database.
      class EncryptionConfig
        include Google::Apis::Core::Hashable
      
        # The Cloud KMS key to be used for encrypting and decrypting the database.
        # Values are of the form `projects//locations//keyRings//cryptoKeys/`.
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
        end
      end
      
      # Encryption information for a Cloud Spanner database or backup.
      class EncryptionInfo
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `encryptionStatus`
        # @return [Google::Apis::SpannerV1::Status]
        attr_accessor :encryption_status
      
        # Output only. The type of encryption.
        # Corresponds to the JSON property `encryptionType`
        # @return [String]
        attr_accessor :encryption_type
      
        # Output only. A Cloud KMS key version that is being used to protect the
        # database or backup.
        # Corresponds to the JSON property `kmsKeyVersion`
        # @return [String]
        attr_accessor :kms_key_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encryption_status = args[:encryption_status] if args.key?(:encryption_status)
          @encryption_type = args[:encryption_type] if args.key?(:encryption_type)
          @kms_key_version = args[:kms_key_version] if args.key?(:kms_key_version)
        end
      end
      
      # The request for ExecuteBatchDml.
      class ExecuteBatchDmlRequest
        include Google::Apis::Core::Hashable
      
        # Common request options for various APIs.
        # Corresponds to the JSON property `requestOptions`
        # @return [Google::Apis::SpannerV1::RequestOptions]
        attr_accessor :request_options
      
        # Required. A per-transaction sequence number used to identify this request.
        # This field makes each request idempotent such that if the request is received
        # multiple times, at most one will succeed. The sequence number must be
        # monotonically increasing within the transaction. If a request arrives for the
        # first time with an out-of-order sequence number, the transaction may be
        # aborted. Replays of previously handled requests will yield the same response
        # as the first execution.
        # Corresponds to the JSON property `seqno`
        # @return [Fixnum]
        attr_accessor :seqno
      
        # Required. The list of statements to execute in this batch. Statements are
        # executed serially, such that the effects of statement `i` are visible to
        # statement `i+1`. Each statement must be a DML statement. Execution stops at
        # the first failed statement; the remaining statements are not executed. Callers
        # must provide at least one statement.
        # Corresponds to the JSON property `statements`
        # @return [Array<Google::Apis::SpannerV1::Statement>]
        attr_accessor :statements
      
        # This message is used to select the transaction in which a Read or ExecuteSql
        # call runs. See TransactionOptions for more information about transactions.
        # Corresponds to the JSON property `transaction`
        # @return [Google::Apis::SpannerV1::TransactionSelector]
        attr_accessor :transaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_options = args[:request_options] if args.key?(:request_options)
          @seqno = args[:seqno] if args.key?(:seqno)
          @statements = args[:statements] if args.key?(:statements)
          @transaction = args[:transaction] if args.key?(:transaction)
        end
      end
      
      # The response for ExecuteBatchDml. Contains a list of ResultSet messages, one
      # for each DML statement that has successfully executed, in the same order as
      # the statements in the request. If a statement fails, the status in the
      # response body identifies the cause of the failure. To check for DML statements
      # that failed, use the following approach: 1. Check the status in the response
      # message. The google.rpc.Code enum value `OK` indicates that all statements
      # were executed successfully. 2. If the status was not `OK`, check the number of
      # result sets in the response. If the response contains `N` ResultSet messages,
      # then statement `N+1` in the request failed. Example 1: * Request: 5 DML
      # statements, all executed successfully. * Response: 5 ResultSet messages, with
      # the status `OK`. Example 2: * Request: 5 DML statements. The third statement
      # has a syntax error. * Response: 2 ResultSet messages, and a syntax error (`
      # INVALID_ARGUMENT`) status. The number of ResultSet messages indicates that the
      # third statement failed, and the fourth and fifth statements were not executed.
      class ExecuteBatchDmlResponse
        include Google::Apis::Core::Hashable
      
        # One ResultSet for each statement in the request that ran successfully, in the
        # same order as the statements in the request. Each ResultSet does not contain
        # any rows. The ResultSetStats in each ResultSet contain the number of rows
        # modified by the statement. Only the first ResultSet in the response contains
        # valid ResultSetMetadata.
        # Corresponds to the JSON property `resultSets`
        # @return [Array<Google::Apis::SpannerV1::ResultSet>]
        attr_accessor :result_sets
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::SpannerV1::Status]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @result_sets = args[:result_sets] if args.key?(:result_sets)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # The request for ExecuteSql and ExecuteStreamingSql.
      class ExecuteSqlRequest
        include Google::Apis::Core::Hashable
      
        # It is not always possible for Cloud Spanner to infer the right SQL type from a
        # JSON value. For example, values of type `BYTES` and values of type `STRING`
        # both appear in params as JSON strings. In these cases, `param_types` can be
        # used to specify the exact SQL type for some or all of the SQL statement
        # parameters. See the definition of Type for more information about SQL types.
        # Corresponds to the JSON property `paramTypes`
        # @return [Hash<String,Google::Apis::SpannerV1::Type>]
        attr_accessor :param_types
      
        # Parameter names and values that bind to placeholders in the SQL string. A
        # parameter placeholder consists of the `@` character followed by the parameter
        # name (for example, `@firstName`). Parameter names must conform to the naming
        # requirements of identifiers as specified at https://cloud.google.com/spanner/
        # docs/lexical#identifiers. Parameters can appear anywhere that a literal value
        # is expected. The same parameter name can be used more than once, for example: `
        # "WHERE id > @msg_id AND id < @msg_id + 100"` It is an error to execute a SQL
        # statement with unbound parameters.
        # Corresponds to the JSON property `params`
        # @return [Hash<String,Object>]
        attr_accessor :params
      
        # If present, results will be restricted to the specified partition previously
        # created using PartitionQuery(). There must be an exact match for the values of
        # fields common to this message and the PartitionQueryRequest message used to
        # create this partition_token.
        # Corresponds to the JSON property `partitionToken`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :partition_token
      
        # Used to control the amount of debugging information returned in ResultSetStats.
        # If partition_token is set, query_mode can only be set to QueryMode.NORMAL.
        # Corresponds to the JSON property `queryMode`
        # @return [String]
        attr_accessor :query_mode
      
        # Query optimizer configuration.
        # Corresponds to the JSON property `queryOptions`
        # @return [Google::Apis::SpannerV1::QueryOptions]
        attr_accessor :query_options
      
        # Common request options for various APIs.
        # Corresponds to the JSON property `requestOptions`
        # @return [Google::Apis::SpannerV1::RequestOptions]
        attr_accessor :request_options
      
        # If this request is resuming a previously interrupted SQL statement execution, `
        # resume_token` should be copied from the last PartialResultSet yielded before
        # the interruption. Doing this enables the new SQL statement execution to resume
        # where the last one left off. The rest of the request parameters must exactly
        # match the request that yielded this token.
        # Corresponds to the JSON property `resumeToken`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :resume_token
      
        # A per-transaction sequence number used to identify this request. This field
        # makes each request idempotent such that if the request is received multiple
        # times, at most one will succeed. The sequence number must be monotonically
        # increasing within the transaction. If a request arrives for the first time
        # with an out-of-order sequence number, the transaction may be aborted. Replays
        # of previously handled requests will yield the same response as the first
        # execution. Required for DML statements. Ignored for queries.
        # Corresponds to the JSON property `seqno`
        # @return [Fixnum]
        attr_accessor :seqno
      
        # Required. The SQL string.
        # Corresponds to the JSON property `sql`
        # @return [String]
        attr_accessor :sql
      
        # This message is used to select the transaction in which a Read or ExecuteSql
        # call runs. See TransactionOptions for more information about transactions.
        # Corresponds to the JSON property `transaction`
        # @return [Google::Apis::SpannerV1::TransactionSelector]
        attr_accessor :transaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @param_types = args[:param_types] if args.key?(:param_types)
          @params = args[:params] if args.key?(:params)
          @partition_token = args[:partition_token] if args.key?(:partition_token)
          @query_mode = args[:query_mode] if args.key?(:query_mode)
          @query_options = args[:query_options] if args.key?(:query_options)
          @request_options = args[:request_options] if args.key?(:request_options)
          @resume_token = args[:resume_token] if args.key?(:resume_token)
          @seqno = args[:seqno] if args.key?(:seqno)
          @sql = args[:sql] if args.key?(:sql)
          @transaction = args[:transaction] if args.key?(:transaction)
        end
      end
      
      # Represents a textual expression in the Common Expression Language (CEL) syntax.
      # CEL is a C-like expression language. The syntax and semantics of CEL are
      # documented at https://github.com/google/cel-spec. Example (Comparison): title:
      # "Summary size limit" description: "Determines if a summary is less than 100
      # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
      # Requestor is owner" description: "Determines if requestor is the document
      # owner" expression: "document.owner == request.auth.claims.email" Example (
      # Logic): title: "Public documents" description: "Determine whether the document
      # should be publicly visible" expression: "document.type != 'private' &&
      # document.type != 'internal'" Example (Data Manipulation): title: "Notification
      # string" description: "Create a notification string with a timestamp."
      # expression: "'New message received at ' + string(document.create_time)" The
      # exact variables and functions that may be referenced within an expression are
      # determined by the service that evaluates it. See the service documentation for
      # additional information.
      class Expr
        include Google::Apis::Core::Hashable
      
        # Optional. Description of the expression. This is a longer text which describes
        # the expression, e.g. when hovered over it in a UI.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Textual representation of an expression in Common Expression Language syntax.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # Optional. String indicating the location of the expression for error reporting,
        # e.g. a file name and a position in the file.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Optional. Title for the expression, i.e. a short string describing its purpose.
        # This can be used e.g. in UIs which allow to enter the expression.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @expression = args[:expression] if args.key?(:expression)
          @location = args[:location] if args.key?(:location)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Message representing a single field of a struct.
      class Field
        include Google::Apis::Core::Hashable
      
        # The name of the field. For reads, this is the column name. For SQL queries, it
        # is the column alias (e.g., `"Word"` in the query `"SELECT 'hello' AS Word"`),
        # or the column name (e.g., `"ColName"` in the query `"SELECT ColName FROM Table"
        # `). Some columns might have an empty name (e.g., `"SELECT UPPER(ColName)"`).
        # Note that a query result can contain multiple fields with the same name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # `Type` indicates the type of a Cloud Spanner value, as might be stored in a
        # table cell or returned from an SQL query.
        # Corresponds to the JSON property `type`
        # @return [Google::Apis::SpannerV1::Type]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The response for GetDatabaseDdl.
      class GetDatabaseDdlResponse
        include Google::Apis::Core::Hashable
      
        # A list of formatted DDL statements defining the schema of the database
        # specified in the request.
        # Corresponds to the JSON property `statements`
        # @return [Array<String>]
        attr_accessor :statements
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @statements = args[:statements] if args.key?(:statements)
        end
      end
      
      # Request message for `GetIamPolicy` method.
      class GetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Encapsulates settings provided to GetIamPolicy.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::SpannerV1::GetPolicyOptions]
        attr_accessor :options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @options = args[:options] if args.key?(:options)
        end
      end
      
      # Encapsulates settings provided to GetIamPolicy.
      class GetPolicyOptions
        include Google::Apis::Core::Hashable
      
        # Optional. The maximum policy version that will be used to format the policy.
        # Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        # rejected. Requests for policies with any conditional role bindings must
        # specify version 3. Policies with no conditional role bindings may specify any
        # valid value or leave the field unset. The policy in the response might use the
        # policy version that you specified, or it might use a lower policy version. For
        # example, if you specify version 3, but the policy has no conditional role
        # bindings, the response uses version 1. To learn which resources support
        # conditions in their IAM policies, see the [IAM documentation](https://cloud.
        # google.com/iam/help/conditions/resource-policies).
        # Corresponds to the JSON property `requestedPolicyVersion`
        # @return [Fixnum]
        attr_accessor :requested_policy_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requested_policy_version = args[:requested_policy_version] if args.key?(:requested_policy_version)
        end
      end
      
      # A message representing a (sparse) collection of hot keys for specific key
      # buckets.
      class IndexedHotKey
        include Google::Apis::Core::Hashable
      
        # A (sparse) mapping from key bucket index to the index of the specific hot row
        # key for that key bucket. The index of the hot row key can be translated to the
        # actual row key via the ScanData.VisualizationData.indexed_keys repeated field.
        # Corresponds to the JSON property `sparseHotKeys`
        # @return [Hash<String,Fixnum>]
        attr_accessor :sparse_hot_keys
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sparse_hot_keys = args[:sparse_hot_keys] if args.key?(:sparse_hot_keys)
        end
      end
      
      # A message representing a (sparse) collection of KeyRangeInfos for specific key
      # buckets.
      class IndexedKeyRangeInfos
        include Google::Apis::Core::Hashable
      
        # A (sparse) mapping from key bucket index to the KeyRangeInfos for that key
        # bucket.
        # Corresponds to the JSON property `keyRangeInfos`
        # @return [Hash<String,Google::Apis::SpannerV1::KeyRangeInfos>]
        attr_accessor :key_range_infos
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_range_infos = args[:key_range_infos] if args.key?(:key_range_infos)
        end
      end
      
      # An isolated set of Cloud Spanner resources on which databases can be hosted.
      class Instance
        include Google::Apis::Core::Hashable
      
        # Required. The name of the instance's configuration. Values are of the form `
        # projects//instanceConfigs/`. See also InstanceConfig and ListInstanceConfigs.
        # Corresponds to the JSON property `config`
        # @return [String]
        attr_accessor :config
      
        # Required. The descriptive name for this instance as it appears in UIs. Must be
        # unique per project and between 4 and 30 characters in length.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Deprecated. This field is not populated.
        # Corresponds to the JSON property `endpointUris`
        # @return [Array<String>]
        attr_accessor :endpoint_uris
      
        # Cloud Labels are a flexible and lightweight mechanism for organizing cloud
        # resources into groups that reflect a customer's organizational needs and
        # deployment strategies. Cloud Labels can be used to filter collections of
        # resources. They can be used to control how resource metrics are aggregated.
        # And they can be used as arguments to policy management rules (e.g. route,
        # firewall, load balancing, etc.). * Label keys must be between 1 and 63
        # characters long and must conform to the following regular expression: `a-z`0,
        # 62``. * Label values must be between 0 and 63 characters long and must conform
        # to the regular expression `[a-z0-9_-]`0,63``. * No more than 64 labels can be
        # associated with a given resource. See https://goo.gl/xmQnxf for more
        # information on and examples of labels. If you plan to use labels in your own
        # code, please note that additional characters may be allowed in the future. And
        # so you are advised to use an internal label representation, such as JSON,
        # which doesn't rely upon specific characters being disallowed. For example,
        # representing labels as the string: name + "_" + value would prove problematic
        # if we were to allow "_" in a future release.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. A unique identifier for the instance, which cannot be changed after
        # the instance is created. Values are of the form `projects//instances/a-z*[a-z0-
        # 9]`. The final segment of the name must be between 2 and 64 characters in
        # length.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The number of nodes allocated to this instance. At most one of either
        # node_count or processing_units should be present in the message. This may be
        # zero in API responses for instances that are not yet in state `READY`. See [
        # the documentation](https://cloud.google.com/spanner/docs/compute-capacity) for
        # more information about nodes and processing units.
        # Corresponds to the JSON property `nodeCount`
        # @return [Fixnum]
        attr_accessor :node_count
      
        # The number of processing units allocated to this instance. At most one of
        # processing_units or node_count should be present in the message. This may be
        # zero in API responses for instances that are not yet in state `READY`. See [
        # the documentation](https://cloud.google.com/spanner/docs/compute-capacity) for
        # more information about nodes and processing units.
        # Corresponds to the JSON property `processingUnits`
        # @return [Fixnum]
        attr_accessor :processing_units
      
        # Output only. The current instance state. For CreateInstance, the state must be
        # either omitted or set to `CREATING`. For UpdateInstance, the state must be
        # either omitted or set to `READY`.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] if args.key?(:config)
          @display_name = args[:display_name] if args.key?(:display_name)
          @endpoint_uris = args[:endpoint_uris] if args.key?(:endpoint_uris)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @node_count = args[:node_count] if args.key?(:node_count)
          @processing_units = args[:processing_units] if args.key?(:processing_units)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # A possible configuration for a Cloud Spanner instance. Configurations define
      # the geographic placement of nodes and their replication.
      class InstanceConfig
        include Google::Apis::Core::Hashable
      
        # The name of this instance configuration as it appears in UIs.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Allowed values of the "default_leader" schema option for databases in
        # instances that use this instance configuration.
        # Corresponds to the JSON property `leaderOptions`
        # @return [Array<String>]
        attr_accessor :leader_options
      
        # A unique identifier for the instance configuration. Values are of the form `
        # projects//instanceConfigs/a-z*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The geographic placement of nodes in this instance configuration and their
        # replication properties.
        # Corresponds to the JSON property `replicas`
        # @return [Array<Google::Apis::SpannerV1::ReplicaInfo>]
        attr_accessor :replicas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @leader_options = args[:leader_options] if args.key?(:leader_options)
          @name = args[:name] if args.key?(:name)
          @replicas = args[:replicas] if args.key?(:replicas)
        end
      end
      
      # KeyRange represents a range of rows in a table or index. A range has a start
      # key and an end key. These keys can be open or closed, indicating if the range
      # includes rows with that key. Keys are represented by lists, where the ith
      # value in the list corresponds to the ith component of the table or index
      # primary key. Individual values are encoded as described here. For example,
      # consider the following table definition: CREATE TABLE UserEvents ( UserName
      # STRING(MAX), EventDate STRING(10) ) PRIMARY KEY(UserName, EventDate); The
      # following keys name rows in this table: "Bob", "2014-09-23" Since the `
      # UserEvents` table's `PRIMARY KEY` clause names two columns, each `UserEvents`
      # key has two elements; the first is the `UserName`, and the second is the `
      # EventDate`. Key ranges with multiple components are interpreted
      # lexicographically by component using the table or index key's declared sort
      # order. For example, the following range returns all events for user `"Bob"`
      # that occurred in the year 2015: "start_closed": ["Bob", "2015-01-01"] "
      # end_closed": ["Bob", "2015-12-31"] Start and end keys can omit trailing key
      # components. This affects the inclusion and exclusion of rows that exactly
      # match the provided key components: if the key is closed, then rows that
      # exactly match the provided components are included; if the key is open, then
      # rows that exactly match are not included. For example, the following range
      # includes all events for `"Bob"` that occurred during and after the year 2000: "
      # start_closed": ["Bob", "2000-01-01"] "end_closed": ["Bob"] The next example
      # retrieves all events for `"Bob"`: "start_closed": ["Bob"] "end_closed": ["Bob"]
      # To retrieve events before the year 2000: "start_closed": ["Bob"] "end_open": [
      # "Bob", "2000-01-01"] The following range includes all rows in the table: "
      # start_closed": [] "end_closed": [] This range returns all users whose `
      # UserName` begins with any character from A to C: "start_closed": ["A"] "
      # end_open": ["D"] This range returns all users whose `UserName` begins with B: "
      # start_closed": ["B"] "end_open": ["C"] Key ranges honor column sort order. For
      # example, suppose a table is defined as follows: CREATE TABLE
      # DescendingSortedTable ` Key INT64, ... ) PRIMARY KEY(Key DESC); The following
      # range retrieves all rows with key values between 1 and 100 inclusive: "
      # start_closed": ["100"] "end_closed": ["1"] Note that 100 is passed as the
      # start, and 1 is passed as the end, because `Key` is a descending column in the
      # schema.
      class KeyRange
        include Google::Apis::Core::Hashable
      
        # If the end is closed, then the range includes all rows whose first `len(
        # end_closed)` key columns exactly match `end_closed`.
        # Corresponds to the JSON property `endClosed`
        # @return [Array<Object>]
        attr_accessor :end_closed
      
        # If the end is open, then the range excludes rows whose first `len(end_open)`
        # key columns exactly match `end_open`.
        # Corresponds to the JSON property `endOpen`
        # @return [Array<Object>]
        attr_accessor :end_open
      
        # If the start is closed, then the range includes all rows whose first `len(
        # start_closed)` key columns exactly match `start_closed`.
        # Corresponds to the JSON property `startClosed`
        # @return [Array<Object>]
        attr_accessor :start_closed
      
        # If the start is open, then the range excludes rows whose first `len(start_open)
        # ` key columns exactly match `start_open`.
        # Corresponds to the JSON property `startOpen`
        # @return [Array<Object>]
        attr_accessor :start_open
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_closed = args[:end_closed] if args.key?(:end_closed)
          @end_open = args[:end_open] if args.key?(:end_open)
          @start_closed = args[:start_closed] if args.key?(:start_closed)
          @start_open = args[:start_open] if args.key?(:start_open)
        end
      end
      
      # A message representing information for a key range (possibly one key).
      class KeyRangeInfo
        include Google::Apis::Core::Hashable
      
        # The list of context values for this key range.
        # Corresponds to the JSON property `contextValues`
        # @return [Array<Google::Apis::SpannerV1::ContextValue>]
        attr_accessor :context_values
      
        # The index of the end key in indexed_keys.
        # Corresponds to the JSON property `endKeyIndex`
        # @return [Fixnum]
        attr_accessor :end_key_index
      
        # A message representing a user-facing string whose value may need to be
        # translated before being displayed.
        # Corresponds to the JSON property `info`
        # @return [Google::Apis::SpannerV1::LocalizedString]
        attr_accessor :info
      
        # The number of keys this range covers.
        # Corresponds to the JSON property `keysCount`
        # @return [Fixnum]
        attr_accessor :keys_count
      
        # A message representing a user-facing string whose value may need to be
        # translated before being displayed.
        # Corresponds to the JSON property `metric`
        # @return [Google::Apis::SpannerV1::LocalizedString]
        attr_accessor :metric
      
        # The index of the start key in indexed_keys.
        # Corresponds to the JSON property `startKeyIndex`
        # @return [Fixnum]
        attr_accessor :start_key_index
      
        # The time offset. This is the time since the start of the time interval.
        # Corresponds to the JSON property `timeOffset`
        # @return [String]
        attr_accessor :time_offset
      
        # A message representing a user-facing string whose value may need to be
        # translated before being displayed.
        # Corresponds to the JSON property `unit`
        # @return [Google::Apis::SpannerV1::LocalizedString]
        attr_accessor :unit
      
        # The value of the metric.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context_values = args[:context_values] if args.key?(:context_values)
          @end_key_index = args[:end_key_index] if args.key?(:end_key_index)
          @info = args[:info] if args.key?(:info)
          @keys_count = args[:keys_count] if args.key?(:keys_count)
          @metric = args[:metric] if args.key?(:metric)
          @start_key_index = args[:start_key_index] if args.key?(:start_key_index)
          @time_offset = args[:time_offset] if args.key?(:time_offset)
          @unit = args[:unit] if args.key?(:unit)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A message representing a list of specific information for multiple key ranges.
      class KeyRangeInfos
        include Google::Apis::Core::Hashable
      
        # The list individual KeyRangeInfos.
        # Corresponds to the JSON property `infos`
        # @return [Array<Google::Apis::SpannerV1::KeyRangeInfo>]
        attr_accessor :infos
      
        # The total size of the list of all KeyRangeInfos. This may be larger than the
        # number of repeated messages above. If that is the case, this number may be
        # used to determine how many are not being shown.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @infos = args[:infos] if args.key?(:infos)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # `KeySet` defines a collection of Cloud Spanner keys and/or key ranges. All the
      # keys are expected to be in the same table or index. The keys need not be
      # sorted in any particular way. If the same key is specified multiple times in
      # the set (for example if two ranges, two keys, or a key and a range overlap),
      # Cloud Spanner behaves as if the key were only specified once.
      class KeySet
        include Google::Apis::Core::Hashable
      
        # For convenience `all` can be set to `true` to indicate that this `KeySet`
        # matches all keys in the table or index. Note that any keys specified in `keys`
        # or `ranges` are only yielded once.
        # Corresponds to the JSON property `all`
        # @return [Boolean]
        attr_accessor :all
        alias_method :all?, :all
      
        # A list of specific keys. Entries in `keys` should have exactly as many
        # elements as there are columns in the primary or index key with which this `
        # KeySet` is used. Individual key values are encoded as described here.
        # Corresponds to the JSON property `keys`
        # @return [Array<Array<Object>>]
        attr_accessor :keys
      
        # A list of key ranges. See KeyRange for more information about key range
        # specifications.
        # Corresponds to the JSON property `ranges`
        # @return [Array<Google::Apis::SpannerV1::KeyRange>]
        attr_accessor :ranges
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @all = args[:all] if args.key?(:all)
          @keys = args[:keys] if args.key?(:keys)
          @ranges = args[:ranges] if args.key?(:ranges)
        end
      end
      
      # The response for ListBackupOperations.
      class ListBackupOperationsResponse
        include Google::Apis::Core::Hashable
      
        # `next_page_token` can be sent in a subsequent ListBackupOperations call to
        # fetch more of the matching metadata.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of matching backup long-running operations. Each operation's name
        # will be prefixed by the backup's name and the operation's metadata will be of
        # type CreateBackupMetadata. Operations returned include those that are pending
        # or have completed/failed/canceled within the last 7 days. Operations returned
        # are ordered by `operation.metadata.value.progress.start_time` in descending
        # order starting from the most recently started operation.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::SpannerV1::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # The response for ListBackups.
      class ListBackupsResponse
        include Google::Apis::Core::Hashable
      
        # The list of matching backups. Backups returned are ordered by `create_time` in
        # descending order, starting from the most recent `create_time`.
        # Corresponds to the JSON property `backups`
        # @return [Array<Google::Apis::SpannerV1::Backup>]
        attr_accessor :backups
      
        # `next_page_token` can be sent in a subsequent ListBackups call to fetch more
        # of the matching backups.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backups = args[:backups] if args.key?(:backups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response for ListDatabaseOperations.
      class ListDatabaseOperationsResponse
        include Google::Apis::Core::Hashable
      
        # `next_page_token` can be sent in a subsequent ListDatabaseOperations call to
        # fetch more of the matching metadata.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of matching database long-running operations. Each operation's name
        # will be prefixed by the database's name. The operation's metadata field type `
        # metadata.type_url` describes the type of the metadata.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::SpannerV1::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # The response for ListDatabases.
      class ListDatabasesResponse
        include Google::Apis::Core::Hashable
      
        # Databases that matched the request.
        # Corresponds to the JSON property `databases`
        # @return [Array<Google::Apis::SpannerV1::Database>]
        attr_accessor :databases
      
        # `next_page_token` can be sent in a subsequent ListDatabases call to fetch more
        # of the matching databases.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @databases = args[:databases] if args.key?(:databases)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response for ListInstanceConfigs.
      class ListInstanceConfigsResponse
        include Google::Apis::Core::Hashable
      
        # The list of requested instance configurations.
        # Corresponds to the JSON property `instanceConfigs`
        # @return [Array<Google::Apis::SpannerV1::InstanceConfig>]
        attr_accessor :instance_configs
      
        # `next_page_token` can be sent in a subsequent ListInstanceConfigs call to
        # fetch more of the matching instance configurations.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_configs = args[:instance_configs] if args.key?(:instance_configs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response for ListInstances.
      class ListInstancesResponse
        include Google::Apis::Core::Hashable
      
        # The list of requested instances.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::SpannerV1::Instance>]
        attr_accessor :instances
      
        # `next_page_token` can be sent in a subsequent ListInstances call to fetch more
        # of the matching instances.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of unreachable instances. It includes the names of instances whose
        # metadata could not be retrieved within instance_deadline.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::SpannerV1::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # Response method from the ListScans method.
      class ListScansResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Available scans based on the list query parameters.
        # Corresponds to the JSON property `scans`
        # @return [Array<Google::Apis::SpannerV1::Scan>]
        attr_accessor :scans
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @scans = args[:scans] if args.key?(:scans)
        end
      end
      
      # The response for ListSessions.
      class ListSessionsResponse
        include Google::Apis::Core::Hashable
      
        # `next_page_token` can be sent in a subsequent ListSessions call to fetch more
        # of the matching sessions.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of requested sessions.
        # Corresponds to the JSON property `sessions`
        # @return [Array<Google::Apis::SpannerV1::Session>]
        attr_accessor :sessions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @sessions = args[:sessions] if args.key?(:sessions)
        end
      end
      
      # A message representing a user-facing string whose value may need to be
      # translated before being displayed.
      class LocalizedString
        include Google::Apis::Core::Hashable
      
        # A map of arguments used when creating the localized message. Keys represent
        # parameter names which may be used by the localized version when substituting
        # dynamic values.
        # Corresponds to the JSON property `args`
        # @return [Hash<String,String>]
        attr_accessor :args
      
        # The canonical English version of this message. If no token is provided or the
        # front-end has no message associated with the token, this text will be
        # displayed as-is.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # The token identifying the message, e.g. 'METRIC_READ_CPU'. This should be
        # unique within the service.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @args = args[:args] if args.key?(:args)
          @message = args[:message] if args.key?(:message)
          @token = args[:token] if args.key?(:token)
        end
      end
      
      # A message representing the actual monitoring data, values for each key bucket
      # over time, of a metric.
      class Metric
        include Google::Apis::Core::Hashable
      
        # The aggregation function used to aggregate each key bucket
        # Corresponds to the JSON property `aggregation`
        # @return [String]
        attr_accessor :aggregation
      
        # A message representing a user-facing string whose value may need to be
        # translated before being displayed.
        # Corresponds to the JSON property `category`
        # @return [Google::Apis::SpannerV1::LocalizedString]
        attr_accessor :category
      
        # A message representing a derived metric.
        # Corresponds to the JSON property `derived`
        # @return [Google::Apis::SpannerV1::DerivedMetric]
        attr_accessor :derived
      
        # A message representing a user-facing string whose value may need to be
        # translated before being displayed.
        # Corresponds to the JSON property `displayLabel`
        # @return [Google::Apis::SpannerV1::LocalizedString]
        attr_accessor :display_label
      
        # Whether the metric has any non-zero data.
        # Corresponds to the JSON property `hasNonzeroData`
        # @return [Boolean]
        attr_accessor :has_nonzero_data
        alias_method :has_nonzero_data?, :has_nonzero_data
      
        # The value that is considered hot for the metric. On a per metric basis hotness
        # signals high utilization and something that might potentially be a cause for
        # concern by the end user. hot_value is used to calibrate and scale visual color
        # scales.
        # Corresponds to the JSON property `hotValue`
        # @return [Float]
        attr_accessor :hot_value
      
        # The (sparse) mapping from time index to an IndexedHotKey message, representing
        # those time intervals for which there are hot keys.
        # Corresponds to the JSON property `indexedHotKeys`
        # @return [Hash<String,Google::Apis::SpannerV1::IndexedHotKey>]
        attr_accessor :indexed_hot_keys
      
        # The (sparse) mapping from time interval index to an IndexedKeyRangeInfos
        # message, representing those time intervals for which there are informational
        # messages concerning key ranges.
        # Corresponds to the JSON property `indexedKeyRangeInfos`
        # @return [Hash<String,Google::Apis::SpannerV1::IndexedKeyRangeInfos>]
        attr_accessor :indexed_key_range_infos
      
        # A message representing a user-facing string whose value may need to be
        # translated before being displayed.
        # Corresponds to the JSON property `info`
        # @return [Google::Apis::SpannerV1::LocalizedString]
        attr_accessor :info
      
        # A message representing a matrix of floats.
        # Corresponds to the JSON property `matrix`
        # @return [Google::Apis::SpannerV1::MetricMatrix]
        attr_accessor :matrix
      
        # A message representing a user-facing string whose value may need to be
        # translated before being displayed.
        # Corresponds to the JSON property `unit`
        # @return [Google::Apis::SpannerV1::LocalizedString]
        attr_accessor :unit
      
        # Whether the metric is visible to the end user.
        # Corresponds to the JSON property `visible`
        # @return [Boolean]
        attr_accessor :visible
        alias_method :visible?, :visible
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregation = args[:aggregation] if args.key?(:aggregation)
          @category = args[:category] if args.key?(:category)
          @derived = args[:derived] if args.key?(:derived)
          @display_label = args[:display_label] if args.key?(:display_label)
          @has_nonzero_data = args[:has_nonzero_data] if args.key?(:has_nonzero_data)
          @hot_value = args[:hot_value] if args.key?(:hot_value)
          @indexed_hot_keys = args[:indexed_hot_keys] if args.key?(:indexed_hot_keys)
          @indexed_key_range_infos = args[:indexed_key_range_infos] if args.key?(:indexed_key_range_infos)
          @info = args[:info] if args.key?(:info)
          @matrix = args[:matrix] if args.key?(:matrix)
          @unit = args[:unit] if args.key?(:unit)
          @visible = args[:visible] if args.key?(:visible)
        end
      end
      
      # A message representing a matrix of floats.
      class MetricMatrix
        include Google::Apis::Core::Hashable
      
        # The rows of the matrix.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::SpannerV1::MetricMatrixRow>]
        attr_accessor :rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rows = args[:rows] if args.key?(:rows)
        end
      end
      
      # A message representing a row of a matrix of floats.
      class MetricMatrixRow
        include Google::Apis::Core::Hashable
      
        # The columns of the row.
        # Corresponds to the JSON property `cols`
        # @return [Array<Float>]
        attr_accessor :cols
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cols = args[:cols] if args.key?(:cols)
        end
      end
      
      # A modification to one or more Cloud Spanner rows. Mutations can be applied to
      # a Cloud Spanner database by sending them in a Commit call.
      class Mutation
        include Google::Apis::Core::Hashable
      
        # Arguments to delete operations.
        # Corresponds to the JSON property `delete`
        # @return [Google::Apis::SpannerV1::Delete]
        attr_accessor :delete
      
        # Arguments to insert, update, insert_or_update, and replace operations.
        # Corresponds to the JSON property `insert`
        # @return [Google::Apis::SpannerV1::Write]
        attr_accessor :insert
      
        # Arguments to insert, update, insert_or_update, and replace operations.
        # Corresponds to the JSON property `insertOrUpdate`
        # @return [Google::Apis::SpannerV1::Write]
        attr_accessor :insert_or_update
      
        # Arguments to insert, update, insert_or_update, and replace operations.
        # Corresponds to the JSON property `replace`
        # @return [Google::Apis::SpannerV1::Write]
        attr_accessor :replace
      
        # Arguments to insert, update, insert_or_update, and replace operations.
        # Corresponds to the JSON property `update`
        # @return [Google::Apis::SpannerV1::Write]
        attr_accessor :update
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delete = args[:delete] if args.key?(:delete)
          @insert = args[:insert] if args.key?(:insert)
          @insert_or_update = args[:insert_or_update] if args.key?(:insert_or_update)
          @replace = args[:replace] if args.key?(:replace)
          @update = args[:update] if args.key?(:update)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::SpannerV1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as `Delete`, the response is `google.
        # protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`,
        # the response should be the resource. For other methods, the response should
        # have the type `XxxResponse`, where `Xxx` is the original method name. For
        # example, if the original method name is `TakeSnapshot()`, the inferred
        # response type is `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # Encapsulates progress related information for a Cloud Spanner long running
      # operation.
      class OperationProgress
        include Google::Apis::Core::Hashable
      
        # If set, the time at which this operation failed or was completed successfully.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Percent completion of the operation. Values are between 0 and 100 inclusive.
        # Corresponds to the JSON property `progressPercent`
        # @return [Fixnum]
        attr_accessor :progress_percent
      
        # Time the request was received.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @progress_percent = args[:progress_percent] if args.key?(:progress_percent)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Metadata type for the long-running operation used to track the progress of
      # optimizations performed on a newly restored database. This long-running
      # operation is automatically created by the system after the successful
      # completion of a database restore, and cannot be cancelled.
      class OptimizeRestoredDatabaseMetadata
        include Google::Apis::Core::Hashable
      
        # Name of the restored database being optimized.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Encapsulates progress related information for a Cloud Spanner long running
        # operation.
        # Corresponds to the JSON property `progress`
        # @return [Google::Apis::SpannerV1::OperationProgress]
        attr_accessor :progress
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @progress = args[:progress] if args.key?(:progress)
        end
      end
      
      # Partial results from a streaming read or SQL query. Streaming reads and SQL
      # queries better tolerate large result sets, large rows, and large values, but
      # are a little trickier to consume.
      class PartialResultSet
        include Google::Apis::Core::Hashable
      
        # If true, then the final value in values is chunked, and must be combined with
        # more values from subsequent `PartialResultSet`s to obtain a complete field
        # value.
        # Corresponds to the JSON property `chunkedValue`
        # @return [Boolean]
        attr_accessor :chunked_value
        alias_method :chunked_value?, :chunked_value
      
        # Metadata about a ResultSet or PartialResultSet.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::SpannerV1::ResultSetMetadata]
        attr_accessor :metadata
      
        # Streaming calls might be interrupted for a variety of reasons, such as TCP
        # connection loss. If this occurs, the stream of results can be resumed by re-
        # sending the original request and including `resume_token`. Note that executing
        # any other transaction in the same session invalidates the token.
        # Corresponds to the JSON property `resumeToken`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :resume_token
      
        # Additional statistics about a ResultSet or PartialResultSet.
        # Corresponds to the JSON property `stats`
        # @return [Google::Apis::SpannerV1::ResultSetStats]
        attr_accessor :stats
      
        # A streamed result set consists of a stream of values, which might be split
        # into many `PartialResultSet` messages to accommodate large rows and/or large
        # values. Every N complete values defines a row, where N is equal to the number
        # of entries in metadata.row_type.fields. Most values are encoded based on type
        # as described here. It is possible that the last value in values is "chunked",
        # meaning that the rest of the value is sent in subsequent `PartialResultSet`(s).
        # This is denoted by the chunked_value field. Two or more chunked values can be
        # merged to form a complete value as follows: * `bool/number/null`: cannot be
        # chunked * `string`: concatenate the strings * `list`: concatenate the lists.
        # If the last element in a list is a `string`, `list`, or `object`, merge it
        # with the first element in the next list by applying these rules recursively. *
        # `object`: concatenate the (field name, field value) pairs. If a field name is
        # duplicated, then apply these rules recursively to merge the field values. Some
        # examples of merging: # Strings are concatenated. "foo", "bar" => "foobar" #
        # Lists of non-strings are concatenated. [2, 3], [4] => [2, 3, 4] # Lists are
        # concatenated, but the last and first elements are merged # because they are
        # strings. ["a", "b"], ["c", "d"] => ["a", "bc", "d"] # Lists are concatenated,
        # but the last and first elements are merged # because they are lists.
        # Recursively, the last and first elements # of the inner lists are merged
        # because they are strings. ["a", ["b", "c"]], [["d"], "e"] => ["a", ["b", "cd"],
        # "e"] # Non-overlapping object fields are combined. `"a": "1"`, `"b": "2"` => `
        # "a": "1", "b": 2"` # Overlapping object fields are merged. `"a": "1"`, `"a": "
        # 2"` => `"a": "12"` # Examples of merging objects containing lists of strings. `
        # "a": ["1"]`, `"a": ["2"]` => `"a": ["12"]` For a more complete example,
        # suppose a streaming SQL query is yielding a result set whose rows contain a
        # single string field. The following `PartialResultSet`s might be yielded: ` "
        # metadata": ` ... ` "values": ["Hello", "W"] "chunked_value": true "
        # resume_token": "Af65..." ` ` "values": ["orl"] "chunked_value": true "
        # resume_token": "Bqp2..." ` ` "values": ["d"] "resume_token": "Zx1B..." ` This
        # sequence of `PartialResultSet`s encodes two rows, one containing the field
        # value `"Hello"`, and a second containing the field value `"World" = "W" + "orl"
        # + "d"`.
        # Corresponds to the JSON property `values`
        # @return [Array<Object>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chunked_value = args[:chunked_value] if args.key?(:chunked_value)
          @metadata = args[:metadata] if args.key?(:metadata)
          @resume_token = args[:resume_token] if args.key?(:resume_token)
          @stats = args[:stats] if args.key?(:stats)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Information returned for each partition returned in a PartitionResponse.
      class Partition
        include Google::Apis::Core::Hashable
      
        # This token can be passed to Read, StreamingRead, ExecuteSql, or
        # ExecuteStreamingSql requests to restrict the results to those identified by
        # this partition token.
        # Corresponds to the JSON property `partitionToken`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :partition_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @partition_token = args[:partition_token] if args.key?(:partition_token)
        end
      end
      
      # Options for a PartitionQueryRequest and PartitionReadRequest.
      class PartitionOptions
        include Google::Apis::Core::Hashable
      
        # **Note:** This hint is currently ignored by PartitionQuery and PartitionRead
        # requests. The desired maximum number of partitions to return. For example,
        # this may be set to the number of workers available. The default for this
        # option is currently 10,000. The maximum value is currently 200,000. This is
        # only a hint. The actual number of partitions returned may be smaller or larger
        # than this maximum count request.
        # Corresponds to the JSON property `maxPartitions`
        # @return [Fixnum]
        attr_accessor :max_partitions
      
        # **Note:** This hint is currently ignored by PartitionQuery and PartitionRead
        # requests. The desired data size for each partition generated. The default for
        # this option is currently 1 GiB. This is only a hint. The actual size of each
        # partition may be smaller or larger than this size request.
        # Corresponds to the JSON property `partitionSizeBytes`
        # @return [Fixnum]
        attr_accessor :partition_size_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_partitions = args[:max_partitions] if args.key?(:max_partitions)
          @partition_size_bytes = args[:partition_size_bytes] if args.key?(:partition_size_bytes)
        end
      end
      
      # The request for PartitionQuery
      class PartitionQueryRequest
        include Google::Apis::Core::Hashable
      
        # It is not always possible for Cloud Spanner to infer the right SQL type from a
        # JSON value. For example, values of type `BYTES` and values of type `STRING`
        # both appear in params as JSON strings. In these cases, `param_types` can be
        # used to specify the exact SQL type for some or all of the SQL query parameters.
        # See the definition of Type for more information about SQL types.
        # Corresponds to the JSON property `paramTypes`
        # @return [Hash<String,Google::Apis::SpannerV1::Type>]
        attr_accessor :param_types
      
        # Parameter names and values that bind to placeholders in the SQL string. A
        # parameter placeholder consists of the `@` character followed by the parameter
        # name (for example, `@firstName`). Parameter names can contain letters, numbers,
        # and underscores. Parameters can appear anywhere that a literal value is
        # expected. The same parameter name can be used more than once, for example: `"
        # WHERE id > @msg_id AND id < @msg_id + 100"` It is an error to execute a SQL
        # statement with unbound parameters.
        # Corresponds to the JSON property `params`
        # @return [Hash<String,Object>]
        attr_accessor :params
      
        # Options for a PartitionQueryRequest and PartitionReadRequest.
        # Corresponds to the JSON property `partitionOptions`
        # @return [Google::Apis::SpannerV1::PartitionOptions]
        attr_accessor :partition_options
      
        # Required. The query request to generate partitions for. The request will fail
        # if the query is not root partitionable. The query plan of a root partitionable
        # query has a single distributed union operator. A distributed union operator
        # conceptually divides one or more tables into multiple splits, remotely
        # evaluates a subquery independently on each split, and then unions all results.
        # This must not contain DML commands, such as INSERT, UPDATE, or DELETE. Use
        # ExecuteStreamingSql with a PartitionedDml transaction for large, partition-
        # friendly DML operations.
        # Corresponds to the JSON property `sql`
        # @return [String]
        attr_accessor :sql
      
        # This message is used to select the transaction in which a Read or ExecuteSql
        # call runs. See TransactionOptions for more information about transactions.
        # Corresponds to the JSON property `transaction`
        # @return [Google::Apis::SpannerV1::TransactionSelector]
        attr_accessor :transaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @param_types = args[:param_types] if args.key?(:param_types)
          @params = args[:params] if args.key?(:params)
          @partition_options = args[:partition_options] if args.key?(:partition_options)
          @sql = args[:sql] if args.key?(:sql)
          @transaction = args[:transaction] if args.key?(:transaction)
        end
      end
      
      # The request for PartitionRead
      class PartitionReadRequest
        include Google::Apis::Core::Hashable
      
        # The columns of table to be returned for each row matching this request.
        # Corresponds to the JSON property `columns`
        # @return [Array<String>]
        attr_accessor :columns
      
        # If non-empty, the name of an index on table. This index is used instead of the
        # table primary key when interpreting key_set and sorting result rows. See
        # key_set for further information.
        # Corresponds to the JSON property `index`
        # @return [String]
        attr_accessor :index
      
        # `KeySet` defines a collection of Cloud Spanner keys and/or key ranges. All the
        # keys are expected to be in the same table or index. The keys need not be
        # sorted in any particular way. If the same key is specified multiple times in
        # the set (for example if two ranges, two keys, or a key and a range overlap),
        # Cloud Spanner behaves as if the key were only specified once.
        # Corresponds to the JSON property `keySet`
        # @return [Google::Apis::SpannerV1::KeySet]
        attr_accessor :key_set
      
        # Options for a PartitionQueryRequest and PartitionReadRequest.
        # Corresponds to the JSON property `partitionOptions`
        # @return [Google::Apis::SpannerV1::PartitionOptions]
        attr_accessor :partition_options
      
        # Required. The name of the table in the database to be read.
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        # This message is used to select the transaction in which a Read or ExecuteSql
        # call runs. See TransactionOptions for more information about transactions.
        # Corresponds to the JSON property `transaction`
        # @return [Google::Apis::SpannerV1::TransactionSelector]
        attr_accessor :transaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @columns = args[:columns] if args.key?(:columns)
          @index = args[:index] if args.key?(:index)
          @key_set = args[:key_set] if args.key?(:key_set)
          @partition_options = args[:partition_options] if args.key?(:partition_options)
          @table = args[:table] if args.key?(:table)
          @transaction = args[:transaction] if args.key?(:transaction)
        end
      end
      
      # The response for PartitionQuery or PartitionRead
      class PartitionResponse
        include Google::Apis::Core::Hashable
      
        # Partitions created by this request.
        # Corresponds to the JSON property `partitions`
        # @return [Array<Google::Apis::SpannerV1::Partition>]
        attr_accessor :partitions
      
        # A transaction.
        # Corresponds to the JSON property `transaction`
        # @return [Google::Apis::SpannerV1::Transaction]
        attr_accessor :transaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @partitions = args[:partitions] if args.key?(:partitions)
          @transaction = args[:transaction] if args.key?(:transaction)
        end
      end
      
      # Message type to initiate a Partitioned DML transaction.
      class PartitionedDml
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Node information for nodes appearing in a QueryPlan.plan_nodes.
      class PlanNode
        include Google::Apis::Core::Hashable
      
        # List of child node `index`es and their relationship to this parent.
        # Corresponds to the JSON property `childLinks`
        # @return [Array<Google::Apis::SpannerV1::ChildLink>]
        attr_accessor :child_links
      
        # The display name for the node.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The execution statistics associated with the node, contained in a group of key-
        # value pairs. Only present if the plan was returned as a result of a profile
        # query. For example, number of executions, number of rows/time per execution
        # etc.
        # Corresponds to the JSON property `executionStats`
        # @return [Hash<String,Object>]
        attr_accessor :execution_stats
      
        # The `PlanNode`'s index in node list.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # Used to determine the type of node. May be needed for visualizing different
        # kinds of nodes differently. For example, If the node is a SCALAR node, it will
        # have a condensed representation which can be used to directly embed a
        # description of the node in its parent.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Attributes relevant to the node contained in a group of key-value pairs. For
        # example, a Parameter Reference node could have the following information in
        # its metadata: ` "parameter_reference": "param1", "parameter_type": "array" `
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Condensed representation of a node and its subtree. Only present for `SCALAR`
        # PlanNode(s).
        # Corresponds to the JSON property `shortRepresentation`
        # @return [Google::Apis::SpannerV1::ShortRepresentation]
        attr_accessor :short_representation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @child_links = args[:child_links] if args.key?(:child_links)
          @display_name = args[:display_name] if args.key?(:display_name)
          @execution_stats = args[:execution_stats] if args.key?(:execution_stats)
          @index = args[:index] if args.key?(:index)
          @kind = args[:kind] if args.key?(:kind)
          @metadata = args[:metadata] if args.key?(:metadata)
          @short_representation = args[:short_representation] if args.key?(:short_representation)
        end
      end
      
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
      # A `binding` binds one or more `members`, or principals, to a single `role`.
      # Principals can be user accounts, service accounts, Google groups, and domains (
      # such as G Suite). A `role` is a named list of permissions; each `role` can be
      # an IAM predefined role or a user-created custom role. For some types of Google
      # Cloud resources, a `binding` can also specify a `condition`, which is a
      # logical expression that allows access to a resource only if the expression
      # evaluates to `true`. A condition can add constraints based on attributes of
      # the request, the resource, or both. To learn which resources support
      # conditions in their IAM policies, see the [IAM documentation](https://cloud.
      # google.com/iam/help/conditions/resource-policies). **JSON example:** ` "
      # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
      # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
      # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
      # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
      # ], "condition": ` "title": "expirable access", "description": "Does not grant
      # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
      # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:**
      # bindings: - members: - user:mike@example.com - group:admins@example.com -
      # domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
      # role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.
      # com role: roles/resourcemanager.organizationViewer condition: title: expirable
      # access description: Does not grant access after Sep 2020 expression: request.
      # time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For
      # a description of IAM and its features, see the [IAM documentation](https://
      # cloud.google.com/iam/docs/).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Associates a list of `members`, or principals, with a `role`. Optionally, may
        # specify a `condition` that determines how and when the `bindings` are applied.
        # Each of the `bindings` must contain at least one principal. The `bindings` in
        # a `Policy` can refer to up to 1,500 principals; up to 250 of these principals
        # can be Google groups. Each occurrence of a principal counts towards these
        # limits. For example, if the `bindings` grant 50 different roles to `user:alice@
        # example.com`, and not to any other principal, then you can add another 1,450
        # principals to the `bindings` in the `Policy`.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::SpannerV1::Binding>]
        attr_accessor :bindings
      
        # `etag` is used for optimistic concurrency control as a way to help prevent
        # simultaneous updates of a policy from overwriting each other. It is strongly
        # suggested that systems make use of the `etag` in the read-modify-write cycle
        # to perform policy updates in order to avoid race conditions: An `etag` is
        # returned in the response to `getIamPolicy`, and systems are expected to put
        # that etag in the request to `setIamPolicy` to ensure that their change will be
        # applied to the same version of the policy. **Important:** If you use IAM
        # Conditions, you must include the `etag` field whenever you call `setIamPolicy`.
        # If you omit this field, then IAM allows you to overwrite a version `3` policy
        # with a version `1` policy, and all of the conditions in the version `3` policy
        # are lost.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Specifies the format of the policy. Valid values are `0`, `1`, and `3`.
        # Requests that specify an invalid value are rejected. Any operation that
        # affects conditional role bindings must specify version `3`. This requirement
        # applies to the following operations: * Getting a policy that includes a
        # conditional role binding * Adding a conditional role binding to a policy *
        # Changing a conditional role binding in a policy * Removing any role binding,
        # with or without a condition, from a policy that includes conditions **
        # Important:** If you use IAM Conditions, you must include the `etag` field
        # whenever you call `setIamPolicy`. If you omit this field, then IAM allows you
        # to overwrite a version `3` policy with a version `1` policy, and all of the
        # conditions in the version `3` policy are lost. If a policy does not include
        # any conditions, operations on that policy may specify any valid version or
        # leave the field unset. To learn which resources support conditions in their
        # IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/
        # conditions/resource-policies).
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # A message representing a key prefix node in the key prefix hierarchy. for eg.
      # Bigtable keyspaces are lexicographically ordered mappings of keys to values.
      # Keys often have a shared prefix structure where users use the keys to organize
      # data. Eg ///employee In this case Keysight will possibly use one node for a
      # company and reuse it for all employees that fall under the company. Doing so
      # improves legibility in the UI.
      class PrefixNode
        include Google::Apis::Core::Hashable
      
        # Whether this corresponds to a data_source name.
        # Corresponds to the JSON property `dataSourceNode`
        # @return [Boolean]
        attr_accessor :data_source_node
        alias_method :data_source_node?, :data_source_node
      
        # The depth in the prefix hierarchy.
        # Corresponds to the JSON property `depth`
        # @return [Fixnum]
        attr_accessor :depth
      
        # The index of the end key bucket of the range that this node spans.
        # Corresponds to the JSON property `endIndex`
        # @return [Fixnum]
        attr_accessor :end_index
      
        # The index of the start key bucket of the range that this node spans.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # The string represented by the prefix node.
        # Corresponds to the JSON property `word`
        # @return [String]
        attr_accessor :word
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_source_node = args[:data_source_node] if args.key?(:data_source_node)
          @depth = args[:depth] if args.key?(:depth)
          @end_index = args[:end_index] if args.key?(:end_index)
          @start_index = args[:start_index] if args.key?(:start_index)
          @word = args[:word] if args.key?(:word)
        end
      end
      
      # Query optimizer configuration.
      class QueryOptions
        include Google::Apis::Core::Hashable
      
        # An option to control the selection of optimizer statistics package. This
        # parameter allows individual queries to use a different query optimizer
        # statistics package. Specifying `latest` as a value instructs Cloud Spanner to
        # use the latest generated statistics package. If not specified, Cloud Spanner
        # uses the statistics package set at the database level options, or the latest
        # package if the database option is not set. The statistics package requested by
        # the query has to be exempt from garbage collection. This can be achieved with
        # the following DDL statement: ``` ALTER STATISTICS SET OPTIONS (allow_gc=false)
        # ``` The list of available statistics packages can be queried from `
        # INFORMATION_SCHEMA.SPANNER_STATISTICS`. Executing a SQL statement with an
        # invalid optimizer statistics package or with a statistics package that allows
        # garbage collection fails with an `INVALID_ARGUMENT` error.
        # Corresponds to the JSON property `optimizerStatisticsPackage`
        # @return [String]
        attr_accessor :optimizer_statistics_package
      
        # An option to control the selection of optimizer version. This parameter allows
        # individual queries to pick different query optimizer versions. Specifying `
        # latest` as a value instructs Cloud Spanner to use the latest supported query
        # optimizer version. If not specified, Cloud Spanner uses the optimizer version
        # set at the database level options. Any other positive integer (from the list
        # of supported optimizer versions) overrides the default optimizer version for
        # query execution. The list of supported optimizer versions can be queried from
        # SPANNER_SYS.SUPPORTED_OPTIMIZER_VERSIONS. Executing a SQL statement with an
        # invalid optimizer version fails with an `INVALID_ARGUMENT` error. See https://
        # cloud.google.com/spanner/docs/query-optimizer/manage-query-optimizer for more
        # information on managing the query optimizer. The `optimizer_version` statement
        # hint has precedence over this setting.
        # Corresponds to the JSON property `optimizerVersion`
        # @return [String]
        attr_accessor :optimizer_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @optimizer_statistics_package = args[:optimizer_statistics_package] if args.key?(:optimizer_statistics_package)
          @optimizer_version = args[:optimizer_version] if args.key?(:optimizer_version)
        end
      end
      
      # Contains an ordered list of nodes appearing in the query plan.
      class QueryPlan
        include Google::Apis::Core::Hashable
      
        # The nodes in the query plan. Plan nodes are returned in pre-order starting
        # with the plan root. Each PlanNode's `id` corresponds to its index in `
        # plan_nodes`.
        # Corresponds to the JSON property `planNodes`
        # @return [Array<Google::Apis::SpannerV1::PlanNode>]
        attr_accessor :plan_nodes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @plan_nodes = args[:plan_nodes] if args.key?(:plan_nodes)
        end
      end
      
      # Message type to initiate a read-only transaction.
      class ReadOnly
        include Google::Apis::Core::Hashable
      
        # Executes all reads at a timestamp that is `exact_staleness` old. The timestamp
        # is chosen soon after the read is started. Guarantees that all writes that have
        # committed more than the specified number of seconds ago are visible. Because
        # Cloud Spanner chooses the exact timestamp, this mode works even if the client'
        # s local clock is substantially skewed from Cloud Spanner commit timestamps.
        # Useful for reading at nearby replicas without the distributed timestamp
        # negotiation overhead of `max_staleness`.
        # Corresponds to the JSON property `exactStaleness`
        # @return [String]
        attr_accessor :exact_staleness
      
        # Read data at a timestamp >= `NOW - max_staleness` seconds. Guarantees that all
        # writes that have committed more than the specified number of seconds ago are
        # visible. Because Cloud Spanner chooses the exact timestamp, this mode works
        # even if the client's local clock is substantially skewed from Cloud Spanner
        # commit timestamps. Useful for reading the freshest data available at a nearby
        # replica, while bounding the possible staleness if the local replica has fallen
        # behind. Note that this option can only be used in single-use transactions.
        # Corresponds to the JSON property `maxStaleness`
        # @return [String]
        attr_accessor :max_staleness
      
        # Executes all reads at a timestamp >= `min_read_timestamp`. This is useful for
        # requesting fresher data than some previous read, or data that is fresh enough
        # to observe the effects of some previously committed transaction whose
        # timestamp is known. Note that this option can only be used in single-use
        # transactions. A timestamp in RFC3339 UTC \"Zulu\" format, accurate to
        # nanoseconds. Example: `"2014-10-02T15:01:23.045123456Z"`.
        # Corresponds to the JSON property `minReadTimestamp`
        # @return [String]
        attr_accessor :min_read_timestamp
      
        # Executes all reads at the given timestamp. Unlike other modes, reads at a
        # specific timestamp are repeatable; the same read at the same timestamp always
        # returns the same data. If the timestamp is in the future, the read will block
        # until the specified timestamp, modulo the read's deadline. Useful for large
        # scale consistent reads such as mapreduces, or for coordinating many reads
        # against a consistent snapshot of the data. A timestamp in RFC3339 UTC \"Zulu\"
        # format, accurate to nanoseconds. Example: `"2014-10-02T15:01:23.045123456Z"`.
        # Corresponds to the JSON property `readTimestamp`
        # @return [String]
        attr_accessor :read_timestamp
      
        # If true, the Cloud Spanner-selected read timestamp is included in the
        # Transaction message that describes the transaction.
        # Corresponds to the JSON property `returnReadTimestamp`
        # @return [Boolean]
        attr_accessor :return_read_timestamp
        alias_method :return_read_timestamp?, :return_read_timestamp
      
        # Read at a timestamp where all previously committed transactions are visible.
        # Corresponds to the JSON property `strong`
        # @return [Boolean]
        attr_accessor :strong
        alias_method :strong?, :strong
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exact_staleness = args[:exact_staleness] if args.key?(:exact_staleness)
          @max_staleness = args[:max_staleness] if args.key?(:max_staleness)
          @min_read_timestamp = args[:min_read_timestamp] if args.key?(:min_read_timestamp)
          @read_timestamp = args[:read_timestamp] if args.key?(:read_timestamp)
          @return_read_timestamp = args[:return_read_timestamp] if args.key?(:return_read_timestamp)
          @strong = args[:strong] if args.key?(:strong)
        end
      end
      
      # The request for Read and StreamingRead.
      class ReadRequest
        include Google::Apis::Core::Hashable
      
        # Required. The columns of table to be returned for each row matching this
        # request.
        # Corresponds to the JSON property `columns`
        # @return [Array<String>]
        attr_accessor :columns
      
        # If non-empty, the name of an index on table. This index is used instead of the
        # table primary key when interpreting key_set and sorting result rows. See
        # key_set for further information.
        # Corresponds to the JSON property `index`
        # @return [String]
        attr_accessor :index
      
        # `KeySet` defines a collection of Cloud Spanner keys and/or key ranges. All the
        # keys are expected to be in the same table or index. The keys need not be
        # sorted in any particular way. If the same key is specified multiple times in
        # the set (for example if two ranges, two keys, or a key and a range overlap),
        # Cloud Spanner behaves as if the key were only specified once.
        # Corresponds to the JSON property `keySet`
        # @return [Google::Apis::SpannerV1::KeySet]
        attr_accessor :key_set
      
        # If greater than zero, only the first `limit` rows are yielded. If `limit` is
        # zero, the default is no limit. A limit cannot be specified if `partition_token`
        # is set.
        # Corresponds to the JSON property `limit`
        # @return [Fixnum]
        attr_accessor :limit
      
        # If present, results will be restricted to the specified partition previously
        # created using PartitionRead(). There must be an exact match for the values of
        # fields common to this message and the PartitionReadRequest message used to
        # create this partition_token.
        # Corresponds to the JSON property `partitionToken`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :partition_token
      
        # Common request options for various APIs.
        # Corresponds to the JSON property `requestOptions`
        # @return [Google::Apis::SpannerV1::RequestOptions]
        attr_accessor :request_options
      
        # If this request is resuming a previously interrupted read, `resume_token`
        # should be copied from the last PartialResultSet yielded before the
        # interruption. Doing this enables the new read to resume where the last read
        # left off. The rest of the request parameters must exactly match the request
        # that yielded this token.
        # Corresponds to the JSON property `resumeToken`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :resume_token
      
        # Required. The name of the table in the database to be read.
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        # This message is used to select the transaction in which a Read or ExecuteSql
        # call runs. See TransactionOptions for more information about transactions.
        # Corresponds to the JSON property `transaction`
        # @return [Google::Apis::SpannerV1::TransactionSelector]
        attr_accessor :transaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @columns = args[:columns] if args.key?(:columns)
          @index = args[:index] if args.key?(:index)
          @key_set = args[:key_set] if args.key?(:key_set)
          @limit = args[:limit] if args.key?(:limit)
          @partition_token = args[:partition_token] if args.key?(:partition_token)
          @request_options = args[:request_options] if args.key?(:request_options)
          @resume_token = args[:resume_token] if args.key?(:resume_token)
          @table = args[:table] if args.key?(:table)
          @transaction = args[:transaction] if args.key?(:transaction)
        end
      end
      
      # Message type to initiate a read-write transaction. Currently this transaction
      # type has no options.
      class ReadWrite
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class ReplicaInfo
        include Google::Apis::Core::Hashable
      
        # If true, this location is designated as the default leader location where
        # leader replicas are placed. See the [region types documentation](https://cloud.
        # google.com/spanner/docs/instances#region_types) for more details.
        # Corresponds to the JSON property `defaultLeaderLocation`
        # @return [Boolean]
        attr_accessor :default_leader_location
        alias_method :default_leader_location?, :default_leader_location
      
        # The location of the serving resources, e.g. "us-central1".
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The type of replica.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_leader_location = args[:default_leader_location] if args.key?(:default_leader_location)
          @location = args[:location] if args.key?(:location)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Common request options for various APIs.
      class RequestOptions
        include Google::Apis::Core::Hashable
      
        # Priority for the request.
        # Corresponds to the JSON property `priority`
        # @return [String]
        attr_accessor :priority
      
        # A per-request tag which can be applied to queries or reads, used for
        # statistics collection. Both request_tag and transaction_tag can be specified
        # for a read or query that belongs to a transaction. This field is ignored for
        # requests where it's not applicable (e.g. CommitRequest). Legal characters for `
        # request_tag` values are all printable characters (ASCII 32 - 126) and the
        # length of a request_tag is limited to 50 characters. Values that exceed this
        # limit are truncated. Any leading underscore (_) characters will be removed
        # from the string.
        # Corresponds to the JSON property `requestTag`
        # @return [String]
        attr_accessor :request_tag
      
        # A tag used for statistics collection about this transaction. Both request_tag
        # and transaction_tag can be specified for a read or query that belongs to a
        # transaction. The value of transaction_tag should be the same for all requests
        # belonging to the same transaction. If this request doesn't belong to any
        # transaction, transaction_tag will be ignored. Legal characters for `
        # transaction_tag` values are all printable characters (ASCII 32 - 126) and the
        # length of a transaction_tag is limited to 50 characters. Values that exceed
        # this limit are truncated. Any leading underscore (_) characters will be
        # removed from the string.
        # Corresponds to the JSON property `transactionTag`
        # @return [String]
        attr_accessor :transaction_tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @priority = args[:priority] if args.key?(:priority)
          @request_tag = args[:request_tag] if args.key?(:request_tag)
          @transaction_tag = args[:transaction_tag] if args.key?(:transaction_tag)
        end
      end
      
      # Encryption configuration for the restored database.
      class RestoreDatabaseEncryptionConfig
        include Google::Apis::Core::Hashable
      
        # Required. The encryption type of the restored database.
        # Corresponds to the JSON property `encryptionType`
        # @return [String]
        attr_accessor :encryption_type
      
        # Optional. The Cloud KMS key that will be used to encrypt/decrypt the restored
        # database. This field should be set only when encryption_type is `
        # CUSTOMER_MANAGED_ENCRYPTION`. Values are of the form `projects//locations//
        # keyRings//cryptoKeys/`.
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encryption_type = args[:encryption_type] if args.key?(:encryption_type)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
        end
      end
      
      # Metadata type for the long-running operation returned by RestoreDatabase.
      class RestoreDatabaseMetadata
        include Google::Apis::Core::Hashable
      
        # Information about a backup.
        # Corresponds to the JSON property `backupInfo`
        # @return [Google::Apis::SpannerV1::BackupInfo]
        attr_accessor :backup_info
      
        # The time at which cancellation of this operation was received. Operations.
        # CancelOperation starts asynchronous cancellation on a long-running operation.
        # The server makes a best effort to cancel the operation, but success is not
        # guaranteed. Clients can use Operations.GetOperation or other methods to check
        # whether the cancellation succeeded or whether the operation completed despite
        # cancellation. On successful cancellation, the operation is not deleted;
        # instead, it becomes an operation with an Operation.error value with a google.
        # rpc.Status.code of 1, corresponding to `Code.CANCELLED`.
        # Corresponds to the JSON property `cancelTime`
        # @return [String]
        attr_accessor :cancel_time
      
        # Name of the database being created and restored to.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # If exists, the name of the long-running operation that will be used to track
        # the post-restore optimization process to optimize the performance of the
        # restored database, and remove the dependency on the restore source. The name
        # is of the form `projects//instances//databases//operations/` where the is the
        # name of database being created and restored to. The metadata type of the long-
        # running operation is OptimizeRestoredDatabaseMetadata. This long-running
        # operation will be automatically created by the system after the
        # RestoreDatabase long-running operation completes successfully. This operation
        # will not be created if the restore was not successful.
        # Corresponds to the JSON property `optimizeDatabaseOperationName`
        # @return [String]
        attr_accessor :optimize_database_operation_name
      
        # Encapsulates progress related information for a Cloud Spanner long running
        # operation.
        # Corresponds to the JSON property `progress`
        # @return [Google::Apis::SpannerV1::OperationProgress]
        attr_accessor :progress
      
        # The type of the restore source.
        # Corresponds to the JSON property `sourceType`
        # @return [String]
        attr_accessor :source_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_info = args[:backup_info] if args.key?(:backup_info)
          @cancel_time = args[:cancel_time] if args.key?(:cancel_time)
          @name = args[:name] if args.key?(:name)
          @optimize_database_operation_name = args[:optimize_database_operation_name] if args.key?(:optimize_database_operation_name)
          @progress = args[:progress] if args.key?(:progress)
          @source_type = args[:source_type] if args.key?(:source_type)
        end
      end
      
      # The request for RestoreDatabase.
      class RestoreDatabaseRequest
        include Google::Apis::Core::Hashable
      
        # Name of the backup from which to restore. Values are of the form `projects//
        # instances//backups/`.
        # Corresponds to the JSON property `backup`
        # @return [String]
        attr_accessor :backup
      
        # Required. The id of the database to create and restore to. This database must
        # not already exist. The `database_id` appended to `parent` forms the full
        # database name of the form `projects//instances//databases/`.
        # Corresponds to the JSON property `databaseId`
        # @return [String]
        attr_accessor :database_id
      
        # Encryption configuration for the restored database.
        # Corresponds to the JSON property `encryptionConfig`
        # @return [Google::Apis::SpannerV1::RestoreDatabaseEncryptionConfig]
        attr_accessor :encryption_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup = args[:backup] if args.key?(:backup)
          @database_id = args[:database_id] if args.key?(:database_id)
          @encryption_config = args[:encryption_config] if args.key?(:encryption_config)
        end
      end
      
      # Information about the database restore.
      class RestoreInfo
        include Google::Apis::Core::Hashable
      
        # Information about a backup.
        # Corresponds to the JSON property `backupInfo`
        # @return [Google::Apis::SpannerV1::BackupInfo]
        attr_accessor :backup_info
      
        # The type of the restore source.
        # Corresponds to the JSON property `sourceType`
        # @return [String]
        attr_accessor :source_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_info = args[:backup_info] if args.key?(:backup_info)
          @source_type = args[:source_type] if args.key?(:source_type)
        end
      end
      
      # Results from Read or ExecuteSql.
      class ResultSet
        include Google::Apis::Core::Hashable
      
        # Metadata about a ResultSet or PartialResultSet.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::SpannerV1::ResultSetMetadata]
        attr_accessor :metadata
      
        # Each element in `rows` is a row whose format is defined by metadata.row_type.
        # The ith element in each row matches the ith field in metadata.row_type.
        # Elements are encoded based on type as described here.
        # Corresponds to the JSON property `rows`
        # @return [Array<Array<Object>>]
        attr_accessor :rows
      
        # Additional statistics about a ResultSet or PartialResultSet.
        # Corresponds to the JSON property `stats`
        # @return [Google::Apis::SpannerV1::ResultSetStats]
        attr_accessor :stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata = args[:metadata] if args.key?(:metadata)
          @rows = args[:rows] if args.key?(:rows)
          @stats = args[:stats] if args.key?(:stats)
        end
      end
      
      # Metadata about a ResultSet or PartialResultSet.
      class ResultSetMetadata
        include Google::Apis::Core::Hashable
      
        # `StructType` defines the fields of a STRUCT type.
        # Corresponds to the JSON property `rowType`
        # @return [Google::Apis::SpannerV1::StructType]
        attr_accessor :row_type
      
        # A transaction.
        # Corresponds to the JSON property `transaction`
        # @return [Google::Apis::SpannerV1::Transaction]
        attr_accessor :transaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @row_type = args[:row_type] if args.key?(:row_type)
          @transaction = args[:transaction] if args.key?(:transaction)
        end
      end
      
      # Additional statistics about a ResultSet or PartialResultSet.
      class ResultSetStats
        include Google::Apis::Core::Hashable
      
        # Contains an ordered list of nodes appearing in the query plan.
        # Corresponds to the JSON property `queryPlan`
        # @return [Google::Apis::SpannerV1::QueryPlan]
        attr_accessor :query_plan
      
        # Aggregated statistics from the execution of the query. Only present when the
        # query is profiled. For example, a query could return the statistics as follows:
        # ` "rows_returned": "3", "elapsed_time": "1.22 secs", "cpu_time": "1.19 secs" `
        # Corresponds to the JSON property `queryStats`
        # @return [Hash<String,Object>]
        attr_accessor :query_stats
      
        # Standard DML returns an exact count of rows that were modified.
        # Corresponds to the JSON property `rowCountExact`
        # @return [Fixnum]
        attr_accessor :row_count_exact
      
        # Partitioned DML does not offer exactly-once semantics, so it returns a lower
        # bound of the rows modified.
        # Corresponds to the JSON property `rowCountLowerBound`
        # @return [Fixnum]
        attr_accessor :row_count_lower_bound
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @query_plan = args[:query_plan] if args.key?(:query_plan)
          @query_stats = args[:query_stats] if args.key?(:query_stats)
          @row_count_exact = args[:row_count_exact] if args.key?(:row_count_exact)
          @row_count_lower_bound = args[:row_count_lower_bound] if args.key?(:row_count_lower_bound)
        end
      end
      
      # The request for Rollback.
      class RollbackRequest
        include Google::Apis::Core::Hashable
      
        # Required. The transaction to roll back.
        # Corresponds to the JSON property `transactionId`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :transaction_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @transaction_id = args[:transaction_id] if args.key?(:transaction_id)
        end
      end
      
      # Scan is a structure which describes Cloud Key Visualizer scan information.
      class Scan
        include Google::Apis::Core::Hashable
      
        # Additional information provided by the implementer.
        # Corresponds to the JSON property `details`
        # @return [Hash<String,Object>]
        attr_accessor :details
      
        # The upper bound for when the scan is defined.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The unique name of the scan, specific to the Database service implementing
        # this interface.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # ScanData contains Cloud Key Visualizer scan data used by the caller to
        # construct a visualization.
        # Corresponds to the JSON property `scanData`
        # @return [Google::Apis::SpannerV1::ScanData]
        attr_accessor :scan_data
      
        # A range of time (inclusive) for when the scan is defined. The lower bound for
        # when the scan is defined.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @end_time = args[:end_time] if args.key?(:end_time)
          @name = args[:name] if args.key?(:name)
          @scan_data = args[:scan_data] if args.key?(:scan_data)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # ScanData contains Cloud Key Visualizer scan data used by the caller to
      # construct a visualization.
      class ScanData
        include Google::Apis::Core::Hashable
      
        # Cloud Key Visualizer scan data. The range of time this information covers is
        # captured via the above time range fields. Note, this field is not available to
        # the ListScans method.
        # Corresponds to the JSON property `data`
        # @return [Google::Apis::SpannerV1::VisualizationData]
        attr_accessor :data
      
        # The upper bound for when the contained data is defined.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # A range of time (inclusive) for when the contained data is defined. The lower
        # bound for when the contained data is defined.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # A session in the Cloud Spanner API.
      class Session
        include Google::Apis::Core::Hashable
      
        # Output only. The approximate timestamp when the session is last used. It is
        # typically earlier than the actual last use time.
        # Corresponds to the JSON property `approximateLastUseTime`
        # @return [String]
        attr_accessor :approximate_last_use_time
      
        # Output only. The timestamp when the session is created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The labels for the session. * Label keys must be between 1 and 63 characters
        # long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-
        # z0-9])?`. * Label values must be between 0 and 63 characters long and must
        # conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`. * No more
        # than 64 labels can be associated with a given session. See https://goo.gl/
        # xmQnxf for more information on and examples of labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The name of the session. This is always system-assigned.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @approximate_last_use_time = args[:approximate_last_use_time] if args.key?(:approximate_last_use_time)
          @create_time = args[:create_time] if args.key?(:create_time)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
        # A `binding` binds one or more `members`, or principals, to a single `role`.
        # Principals can be user accounts, service accounts, Google groups, and domains (
        # such as G Suite). A `role` is a named list of permissions; each `role` can be
        # an IAM predefined role or a user-created custom role. For some types of Google
        # Cloud resources, a `binding` can also specify a `condition`, which is a
        # logical expression that allows access to a resource only if the expression
        # evaluates to `true`. A condition can add constraints based on attributes of
        # the request, the resource, or both. To learn which resources support
        # conditions in their IAM policies, see the [IAM documentation](https://cloud.
        # google.com/iam/help/conditions/resource-policies). **JSON example:** ` "
        # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
        # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
        # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
        # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
        # ], "condition": ` "title": "expirable access", "description": "Does not grant
        # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
        # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:**
        # bindings: - members: - user:mike@example.com - group:admins@example.com -
        # domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
        # role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.
        # com role: roles/resourcemanager.organizationViewer condition: title: expirable
        # access description: Does not grant access after Sep 2020 expression: request.
        # time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For
        # a description of IAM and its features, see the [IAM documentation](https://
        # cloud.google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::SpannerV1::Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
        end
      end
      
      # Condensed representation of a node and its subtree. Only present for `SCALAR`
      # PlanNode(s).
      class ShortRepresentation
        include Google::Apis::Core::Hashable
      
        # A string representation of the expression subtree rooted at this node.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A mapping of (subquery variable name) -> (subquery node id) for cases where
        # the `description` string of this node references a `SCALAR` subquery contained
        # in the expression subtree rooted at this node. The referenced `SCALAR`
        # subquery may not necessarily be a direct child of this node.
        # Corresponds to the JSON property `subqueries`
        # @return [Hash<String,Fixnum>]
        attr_accessor :subqueries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @subqueries = args[:subqueries] if args.key?(:subqueries)
        end
      end
      
      # A single DML statement.
      class Statement
        include Google::Apis::Core::Hashable
      
        # It is not always possible for Cloud Spanner to infer the right SQL type from a
        # JSON value. For example, values of type `BYTES` and values of type `STRING`
        # both appear in params as JSON strings. In these cases, `param_types` can be
        # used to specify the exact SQL type for some or all of the SQL statement
        # parameters. See the definition of Type for more information about SQL types.
        # Corresponds to the JSON property `paramTypes`
        # @return [Hash<String,Google::Apis::SpannerV1::Type>]
        attr_accessor :param_types
      
        # Parameter names and values that bind to placeholders in the DML string. A
        # parameter placeholder consists of the `@` character followed by the parameter
        # name (for example, `@firstName`). Parameter names can contain letters, numbers,
        # and underscores. Parameters can appear anywhere that a literal value is
        # expected. The same parameter name can be used more than once, for example: `"
        # WHERE id > @msg_id AND id < @msg_id + 100"` It is an error to execute a SQL
        # statement with unbound parameters.
        # Corresponds to the JSON property `params`
        # @return [Hash<String,Object>]
        attr_accessor :params
      
        # Required. The DML string.
        # Corresponds to the JSON property `sql`
        # @return [String]
        attr_accessor :sql
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @param_types = args[:param_types] if args.key?(:param_types)
          @params = args[:params] if args.key?(:params)
          @sql = args[:sql] if args.key?(:sql)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # `StructType` defines the fields of a STRUCT type.
      class StructType
        include Google::Apis::Core::Hashable
      
        # The list of fields that make up this struct. Order is significant, because
        # values of this struct type are represented as lists, where the order of field
        # values matches the order of fields in the StructType. In turn, the order of
        # fields matches the order of columns in a read request, or the order of fields
        # in the `SELECT` clause of a query.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::SpannerV1::Field>]
        attr_accessor :fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
        end
      end
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # REQUIRED: The set of permissions to check for 'resource'. Permissions with
        # wildcards (such as '*', 'spanner.*', 'spanner.instances.*') are not allowed.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Response message for `TestIamPermissions` method.
      class TestIamPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # A subset of `TestPermissionsRequest.permissions` that the caller is allowed.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # A transaction.
      class Transaction
        include Google::Apis::Core::Hashable
      
        # `id` may be used to identify the transaction in subsequent Read, ExecuteSql,
        # Commit, or Rollback calls. Single-use read-only transactions do not have IDs,
        # because single-use transactions do not support multiple requests.
        # Corresponds to the JSON property `id`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :id
      
        # For snapshot read-only transactions, the read timestamp chosen for the
        # transaction. Not returned by default: see TransactionOptions.ReadOnly.
        # return_read_timestamp. A timestamp in RFC3339 UTC \"Zulu\" format, accurate to
        # nanoseconds. Example: `"2014-10-02T15:01:23.045123456Z"`.
        # Corresponds to the JSON property `readTimestamp`
        # @return [String]
        attr_accessor :read_timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @read_timestamp = args[:read_timestamp] if args.key?(:read_timestamp)
        end
      end
      
      # Transactions: Each session can have at most one active transaction at a time (
      # note that standalone reads and queries use a transaction internally and do
      # count towards the one transaction limit). After the active transaction is
      # completed, the session can immediately be re-used for the next transaction. It
      # is not necessary to create a new session for each transaction. Transaction
      # Modes: Cloud Spanner supports three transaction modes: 1. Locking read-write.
      # This type of transaction is the only way to write data into Cloud Spanner.
      # These transactions rely on pessimistic locking and, if necessary, two-phase
      # commit. Locking read-write transactions may abort, requiring the application
      # to retry. 2. Snapshot read-only. This transaction type provides guaranteed
      # consistency across several reads, but does not allow writes. Snapshot read-
      # only transactions can be configured to read at timestamps in the past.
      # Snapshot read-only transactions do not need to be committed. 3. Partitioned
      # DML. This type of transaction is used to execute a single Partitioned DML
      # statement. Partitioned DML partitions the key space and runs the DML statement
      # over each partition in parallel using separate, internal transactions that
      # commit independently. Partitioned DML transactions do not need to be committed.
      # For transactions that only read, snapshot read-only transactions provide
      # simpler semantics and are almost always faster. In particular, read-only
      # transactions do not take locks, so they do not conflict with read-write
      # transactions. As a consequence of not taking locks, they also do not abort, so
      # retry loops are not needed. Transactions may only read/write data in a single
      # database. They may, however, read/write data in different tables within that
      # database. Locking Read-Write Transactions: Locking transactions may be used to
      # atomically read-modify-write data anywhere in a database. This type of
      # transaction is externally consistent. Clients should attempt to minimize the
      # amount of time a transaction is active. Faster transactions commit with higher
      # probability and cause less contention. Cloud Spanner attempts to keep read
      # locks active as long as the transaction continues to do reads, and the
      # transaction has not been terminated by Commit or Rollback. Long periods of
      # inactivity at the client may cause Cloud Spanner to release a transaction's
      # locks and abort it. Conceptually, a read-write transaction consists of zero or
      # more reads or SQL statements followed by Commit. At any time before Commit,
      # the client can send a Rollback request to abort the transaction. Semantics:
      # Cloud Spanner can commit the transaction if all read locks it acquired are
      # still valid at commit time, and it is able to acquire write locks for all
      # writes. Cloud Spanner can abort the transaction for any reason. If a commit
      # attempt returns `ABORTED`, Cloud Spanner guarantees that the transaction has
      # not modified any user data in Cloud Spanner. Unless the transaction commits,
      # Cloud Spanner makes no guarantees about how long the transaction's locks were
      # held for. It is an error to use Cloud Spanner locks for any sort of mutual
      # exclusion other than between Cloud Spanner transactions themselves. Retrying
      # Aborted Transactions: When a transaction aborts, the application can choose to
      # retry the whole transaction again. To maximize the chances of successfully
      # committing the retry, the client should execute the retry in the same session
      # as the original attempt. The original session's lock priority increases with
      # each consecutive abort, meaning that each attempt has a slightly better chance
      # of success than the previous. Under some circumstances (for example, many
      # transactions attempting to modify the same row(s)), a transaction can abort
      # many times in a short period before successfully committing. Thus, it is not a
      # good idea to cap the number of retries a transaction can attempt; instead, it
      # is better to limit the total amount of time spent retrying. Idle Transactions:
      # A transaction is considered idle if it has no outstanding reads or SQL queries
      # and has not started a read or SQL query within the last 10 seconds. Idle
      # transactions can be aborted by Cloud Spanner so that they don't hold on to
      # locks indefinitely. If an idle transaction is aborted, the commit will fail
      # with error `ABORTED`. If this behavior is undesirable, periodically executing
      # a simple SQL query in the transaction (for example, `SELECT 1`) prevents the
      # transaction from becoming idle. Snapshot Read-Only Transactions: Snapshot read-
      # only transactions provides a simpler method than locking read-write
      # transactions for doing several consistent reads. However, this type of
      # transaction does not support writes. Snapshot transactions do not take locks.
      # Instead, they work by choosing a Cloud Spanner timestamp, then executing all
      # reads at that timestamp. Since they do not acquire locks, they do not block
      # concurrent read-write transactions. Unlike locking read-write transactions,
      # snapshot read-only transactions never abort. They can fail if the chosen read
      # timestamp is garbage collected; however, the default garbage collection policy
      # is generous enough that most applications do not need to worry about this in
      # practice. Snapshot read-only transactions do not need to call Commit or
      # Rollback (and in fact are not permitted to do so). To execute a snapshot
      # transaction, the client specifies a timestamp bound, which tells Cloud Spanner
      # how to choose a read timestamp. The types of timestamp bound are: - Strong (
      # the default). - Bounded staleness. - Exact staleness. If the Cloud Spanner
      # database to be read is geographically distributed, stale read-only
      # transactions can execute more quickly than strong or read-write transaction,
      # because they are able to execute far from the leader replica. Each type of
      # timestamp bound is discussed in detail below. Strong: Strong reads are
      # guaranteed to see the effects of all transactions that have committed before
      # the start of the read. Furthermore, all rows yielded by a single read are
      # consistent with each other -- if any part of the read observes a transaction,
      # all parts of the read see the transaction. Strong reads are not repeatable:
      # two consecutive strong read-only transactions might return inconsistent
      # results if there are concurrent writes. If consistency across reads is
      # required, the reads should be executed within a transaction or at an exact
      # read timestamp. See TransactionOptions.ReadOnly.strong. Exact Staleness: These
      # timestamp bounds execute reads at a user-specified timestamp. Reads at a
      # timestamp are guaranteed to see a consistent prefix of the global transaction
      # history: they observe modifications done by all transactions with a commit
      # timestamp less than or equal to the read timestamp, and observe none of the
      # modifications done by transactions with a larger commit timestamp. They will
      # block until all conflicting transactions that may be assigned commit
      # timestamps <= the read timestamp have finished. The timestamp can either be
      # expressed as an absolute Cloud Spanner commit timestamp or a staleness
      # relative to the current time. These modes do not require a "negotiation phase"
      # to pick a timestamp. As a result, they execute slightly faster than the
      # equivalent boundedly stale concurrency modes. On the other hand, boundedly
      # stale reads usually return fresher results. See TransactionOptions.ReadOnly.
      # read_timestamp and TransactionOptions.ReadOnly.exact_staleness. Bounded
      # Staleness: Bounded staleness modes allow Cloud Spanner to pick the read
      # timestamp, subject to a user-provided staleness bound. Cloud Spanner chooses
      # the newest timestamp within the staleness bound that allows execution of the
      # reads at the closest available replica without blocking. All rows yielded are
      # consistent with each other -- if any part of the read observes a transaction,
      # all parts of the read see the transaction. Boundedly stale reads are not
      # repeatable: two stale reads, even if they use the same staleness bound, can
      # execute at different timestamps and thus return inconsistent results.
      # Boundedly stale reads execute in two phases: the first phase negotiates a
      # timestamp among all replicas needed to serve the read. In the second phase,
      # reads are executed at the negotiated timestamp. As a result of the two phase
      # execution, bounded staleness reads are usually a little slower than comparable
      # exact staleness reads. However, they are typically able to return fresher
      # results, and are more likely to execute at the closest replica. Because the
      # timestamp negotiation requires up-front knowledge of which rows will be read,
      # it can only be used with single-use read-only transactions. See
      # TransactionOptions.ReadOnly.max_staleness and TransactionOptions.ReadOnly.
      # min_read_timestamp. Old Read Timestamps and Garbage Collection: Cloud Spanner
      # continuously garbage collects deleted and overwritten data in the background
      # to reclaim storage space. This process is known as "version GC". By default,
      # version GC reclaims versions after they are one hour old. Because of this,
      # Cloud Spanner cannot perform reads at read timestamps more than one hour in
      # the past. This restriction also applies to in-progress reads and/or SQL
      # queries whose timestamp become too old while executing. Reads and SQL queries
      # with too-old read timestamps fail with the error `FAILED_PRECONDITION`.
      # Partitioned DML Transactions: Partitioned DML transactions are used to execute
      # DML statements with a different execution strategy that provides different,
      # and often better, scalability properties for large, table-wide operations than
      # DML in a ReadWrite transaction. Smaller scoped statements, such as an OLTP
      # workload, should prefer using ReadWrite transactions. Partitioned DML
      # partitions the keyspace and runs the DML statement on each partition in
      # separate, internal transactions. These transactions commit automatically when
      # complete, and run independently from one another. To reduce lock contention,
      # this execution strategy only acquires read locks on rows that match the WHERE
      # clause of the statement. Additionally, the smaller per-partition transactions
      # hold locks for less time. That said, Partitioned DML is not a drop-in
      # replacement for standard DML used in ReadWrite transactions. - The DML
      # statement must be fully-partitionable. Specifically, the statement must be
      # expressible as the union of many statements which each access only a single
      # row of the table. - The statement is not applied atomically to all rows of the
      # table. Rather, the statement is applied atomically to partitions of the table,
      # in independent transactions. Secondary index rows are updated atomically with
      # the base table rows. - Partitioned DML does not guarantee exactly-once
      # execution semantics against a partition. The statement will be applied at
      # least once to each partition. It is strongly recommended that the DML
      # statement should be idempotent to avoid unexpected results. For instance, it
      # is potentially dangerous to run a statement such as `UPDATE table SET column =
      # column + 1` as it could be run multiple times against some rows. - The
      # partitions are committed automatically - there is no support for Commit or
      # Rollback. If the call returns an error, or if the client issuing the
      # ExecuteSql call dies, it is possible that some rows had the statement executed
      # on them successfully. It is also possible that statement was never executed
      # against other rows. - Partitioned DML transactions may only contain the
      # execution of a single DML statement via ExecuteSql or ExecuteStreamingSql. -
      # If any error is encountered during the execution of the partitioned DML
      # operation (for instance, a UNIQUE INDEX violation, division by zero, or a
      # value that cannot be stored due to schema constraints), then the operation is
      # stopped at that point and an error is returned. It is possible that at this
      # point, some partitions have been committed (or even committed multiple times),
      # and other partitions have not been run at all. Given the above, Partitioned
      # DML is good fit for large, database-wide, operations that are idempotent, such
      # as deleting old rows from a very large table.
      class TransactionOptions
        include Google::Apis::Core::Hashable
      
        # Message type to initiate a Partitioned DML transaction.
        # Corresponds to the JSON property `partitionedDml`
        # @return [Google::Apis::SpannerV1::PartitionedDml]
        attr_accessor :partitioned_dml
      
        # Message type to initiate a read-only transaction.
        # Corresponds to the JSON property `readOnly`
        # @return [Google::Apis::SpannerV1::ReadOnly]
        attr_accessor :read_only
      
        # Message type to initiate a read-write transaction. Currently this transaction
        # type has no options.
        # Corresponds to the JSON property `readWrite`
        # @return [Google::Apis::SpannerV1::ReadWrite]
        attr_accessor :read_write
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @partitioned_dml = args[:partitioned_dml] if args.key?(:partitioned_dml)
          @read_only = args[:read_only] if args.key?(:read_only)
          @read_write = args[:read_write] if args.key?(:read_write)
        end
      end
      
      # This message is used to select the transaction in which a Read or ExecuteSql
      # call runs. See TransactionOptions for more information about transactions.
      class TransactionSelector
        include Google::Apis::Core::Hashable
      
        # Transactions: Each session can have at most one active transaction at a time (
        # note that standalone reads and queries use a transaction internally and do
        # count towards the one transaction limit). After the active transaction is
        # completed, the session can immediately be re-used for the next transaction. It
        # is not necessary to create a new session for each transaction. Transaction
        # Modes: Cloud Spanner supports three transaction modes: 1. Locking read-write.
        # This type of transaction is the only way to write data into Cloud Spanner.
        # These transactions rely on pessimistic locking and, if necessary, two-phase
        # commit. Locking read-write transactions may abort, requiring the application
        # to retry. 2. Snapshot read-only. This transaction type provides guaranteed
        # consistency across several reads, but does not allow writes. Snapshot read-
        # only transactions can be configured to read at timestamps in the past.
        # Snapshot read-only transactions do not need to be committed. 3. Partitioned
        # DML. This type of transaction is used to execute a single Partitioned DML
        # statement. Partitioned DML partitions the key space and runs the DML statement
        # over each partition in parallel using separate, internal transactions that
        # commit independently. Partitioned DML transactions do not need to be committed.
        # For transactions that only read, snapshot read-only transactions provide
        # simpler semantics and are almost always faster. In particular, read-only
        # transactions do not take locks, so they do not conflict with read-write
        # transactions. As a consequence of not taking locks, they also do not abort, so
        # retry loops are not needed. Transactions may only read/write data in a single
        # database. They may, however, read/write data in different tables within that
        # database. Locking Read-Write Transactions: Locking transactions may be used to
        # atomically read-modify-write data anywhere in a database. This type of
        # transaction is externally consistent. Clients should attempt to minimize the
        # amount of time a transaction is active. Faster transactions commit with higher
        # probability and cause less contention. Cloud Spanner attempts to keep read
        # locks active as long as the transaction continues to do reads, and the
        # transaction has not been terminated by Commit or Rollback. Long periods of
        # inactivity at the client may cause Cloud Spanner to release a transaction's
        # locks and abort it. Conceptually, a read-write transaction consists of zero or
        # more reads or SQL statements followed by Commit. At any time before Commit,
        # the client can send a Rollback request to abort the transaction. Semantics:
        # Cloud Spanner can commit the transaction if all read locks it acquired are
        # still valid at commit time, and it is able to acquire write locks for all
        # writes. Cloud Spanner can abort the transaction for any reason. If a commit
        # attempt returns `ABORTED`, Cloud Spanner guarantees that the transaction has
        # not modified any user data in Cloud Spanner. Unless the transaction commits,
        # Cloud Spanner makes no guarantees about how long the transaction's locks were
        # held for. It is an error to use Cloud Spanner locks for any sort of mutual
        # exclusion other than between Cloud Spanner transactions themselves. Retrying
        # Aborted Transactions: When a transaction aborts, the application can choose to
        # retry the whole transaction again. To maximize the chances of successfully
        # committing the retry, the client should execute the retry in the same session
        # as the original attempt. The original session's lock priority increases with
        # each consecutive abort, meaning that each attempt has a slightly better chance
        # of success than the previous. Under some circumstances (for example, many
        # transactions attempting to modify the same row(s)), a transaction can abort
        # many times in a short period before successfully committing. Thus, it is not a
        # good idea to cap the number of retries a transaction can attempt; instead, it
        # is better to limit the total amount of time spent retrying. Idle Transactions:
        # A transaction is considered idle if it has no outstanding reads or SQL queries
        # and has not started a read or SQL query within the last 10 seconds. Idle
        # transactions can be aborted by Cloud Spanner so that they don't hold on to
        # locks indefinitely. If an idle transaction is aborted, the commit will fail
        # with error `ABORTED`. If this behavior is undesirable, periodically executing
        # a simple SQL query in the transaction (for example, `SELECT 1`) prevents the
        # transaction from becoming idle. Snapshot Read-Only Transactions: Snapshot read-
        # only transactions provides a simpler method than locking read-write
        # transactions for doing several consistent reads. However, this type of
        # transaction does not support writes. Snapshot transactions do not take locks.
        # Instead, they work by choosing a Cloud Spanner timestamp, then executing all
        # reads at that timestamp. Since they do not acquire locks, they do not block
        # concurrent read-write transactions. Unlike locking read-write transactions,
        # snapshot read-only transactions never abort. They can fail if the chosen read
        # timestamp is garbage collected; however, the default garbage collection policy
        # is generous enough that most applications do not need to worry about this in
        # practice. Snapshot read-only transactions do not need to call Commit or
        # Rollback (and in fact are not permitted to do so). To execute a snapshot
        # transaction, the client specifies a timestamp bound, which tells Cloud Spanner
        # how to choose a read timestamp. The types of timestamp bound are: - Strong (
        # the default). - Bounded staleness. - Exact staleness. If the Cloud Spanner
        # database to be read is geographically distributed, stale read-only
        # transactions can execute more quickly than strong or read-write transaction,
        # because they are able to execute far from the leader replica. Each type of
        # timestamp bound is discussed in detail below. Strong: Strong reads are
        # guaranteed to see the effects of all transactions that have committed before
        # the start of the read. Furthermore, all rows yielded by a single read are
        # consistent with each other -- if any part of the read observes a transaction,
        # all parts of the read see the transaction. Strong reads are not repeatable:
        # two consecutive strong read-only transactions might return inconsistent
        # results if there are concurrent writes. If consistency across reads is
        # required, the reads should be executed within a transaction or at an exact
        # read timestamp. See TransactionOptions.ReadOnly.strong. Exact Staleness: These
        # timestamp bounds execute reads at a user-specified timestamp. Reads at a
        # timestamp are guaranteed to see a consistent prefix of the global transaction
        # history: they observe modifications done by all transactions with a commit
        # timestamp less than or equal to the read timestamp, and observe none of the
        # modifications done by transactions with a larger commit timestamp. They will
        # block until all conflicting transactions that may be assigned commit
        # timestamps <= the read timestamp have finished. The timestamp can either be
        # expressed as an absolute Cloud Spanner commit timestamp or a staleness
        # relative to the current time. These modes do not require a "negotiation phase"
        # to pick a timestamp. As a result, they execute slightly faster than the
        # equivalent boundedly stale concurrency modes. On the other hand, boundedly
        # stale reads usually return fresher results. See TransactionOptions.ReadOnly.
        # read_timestamp and TransactionOptions.ReadOnly.exact_staleness. Bounded
        # Staleness: Bounded staleness modes allow Cloud Spanner to pick the read
        # timestamp, subject to a user-provided staleness bound. Cloud Spanner chooses
        # the newest timestamp within the staleness bound that allows execution of the
        # reads at the closest available replica without blocking. All rows yielded are
        # consistent with each other -- if any part of the read observes a transaction,
        # all parts of the read see the transaction. Boundedly stale reads are not
        # repeatable: two stale reads, even if they use the same staleness bound, can
        # execute at different timestamps and thus return inconsistent results.
        # Boundedly stale reads execute in two phases: the first phase negotiates a
        # timestamp among all replicas needed to serve the read. In the second phase,
        # reads are executed at the negotiated timestamp. As a result of the two phase
        # execution, bounded staleness reads are usually a little slower than comparable
        # exact staleness reads. However, they are typically able to return fresher
        # results, and are more likely to execute at the closest replica. Because the
        # timestamp negotiation requires up-front knowledge of which rows will be read,
        # it can only be used with single-use read-only transactions. See
        # TransactionOptions.ReadOnly.max_staleness and TransactionOptions.ReadOnly.
        # min_read_timestamp. Old Read Timestamps and Garbage Collection: Cloud Spanner
        # continuously garbage collects deleted and overwritten data in the background
        # to reclaim storage space. This process is known as "version GC". By default,
        # version GC reclaims versions after they are one hour old. Because of this,
        # Cloud Spanner cannot perform reads at read timestamps more than one hour in
        # the past. This restriction also applies to in-progress reads and/or SQL
        # queries whose timestamp become too old while executing. Reads and SQL queries
        # with too-old read timestamps fail with the error `FAILED_PRECONDITION`.
        # Partitioned DML Transactions: Partitioned DML transactions are used to execute
        # DML statements with a different execution strategy that provides different,
        # and often better, scalability properties for large, table-wide operations than
        # DML in a ReadWrite transaction. Smaller scoped statements, such as an OLTP
        # workload, should prefer using ReadWrite transactions. Partitioned DML
        # partitions the keyspace and runs the DML statement on each partition in
        # separate, internal transactions. These transactions commit automatically when
        # complete, and run independently from one another. To reduce lock contention,
        # this execution strategy only acquires read locks on rows that match the WHERE
        # clause of the statement. Additionally, the smaller per-partition transactions
        # hold locks for less time. That said, Partitioned DML is not a drop-in
        # replacement for standard DML used in ReadWrite transactions. - The DML
        # statement must be fully-partitionable. Specifically, the statement must be
        # expressible as the union of many statements which each access only a single
        # row of the table. - The statement is not applied atomically to all rows of the
        # table. Rather, the statement is applied atomically to partitions of the table,
        # in independent transactions. Secondary index rows are updated atomically with
        # the base table rows. - Partitioned DML does not guarantee exactly-once
        # execution semantics against a partition. The statement will be applied at
        # least once to each partition. It is strongly recommended that the DML
        # statement should be idempotent to avoid unexpected results. For instance, it
        # is potentially dangerous to run a statement such as `UPDATE table SET column =
        # column + 1` as it could be run multiple times against some rows. - The
        # partitions are committed automatically - there is no support for Commit or
        # Rollback. If the call returns an error, or if the client issuing the
        # ExecuteSql call dies, it is possible that some rows had the statement executed
        # on them successfully. It is also possible that statement was never executed
        # against other rows. - Partitioned DML transactions may only contain the
        # execution of a single DML statement via ExecuteSql or ExecuteStreamingSql. -
        # If any error is encountered during the execution of the partitioned DML
        # operation (for instance, a UNIQUE INDEX violation, division by zero, or a
        # value that cannot be stored due to schema constraints), then the operation is
        # stopped at that point and an error is returned. It is possible that at this
        # point, some partitions have been committed (or even committed multiple times),
        # and other partitions have not been run at all. Given the above, Partitioned
        # DML is good fit for large, database-wide, operations that are idempotent, such
        # as deleting old rows from a very large table.
        # Corresponds to the JSON property `begin`
        # @return [Google::Apis::SpannerV1::TransactionOptions]
        attr_accessor :begin
      
        # Execute the read or SQL query in a previously-started transaction.
        # Corresponds to the JSON property `id`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :id
      
        # Transactions: Each session can have at most one active transaction at a time (
        # note that standalone reads and queries use a transaction internally and do
        # count towards the one transaction limit). After the active transaction is
        # completed, the session can immediately be re-used for the next transaction. It
        # is not necessary to create a new session for each transaction. Transaction
        # Modes: Cloud Spanner supports three transaction modes: 1. Locking read-write.
        # This type of transaction is the only way to write data into Cloud Spanner.
        # These transactions rely on pessimistic locking and, if necessary, two-phase
        # commit. Locking read-write transactions may abort, requiring the application
        # to retry. 2. Snapshot read-only. This transaction type provides guaranteed
        # consistency across several reads, but does not allow writes. Snapshot read-
        # only transactions can be configured to read at timestamps in the past.
        # Snapshot read-only transactions do not need to be committed. 3. Partitioned
        # DML. This type of transaction is used to execute a single Partitioned DML
        # statement. Partitioned DML partitions the key space and runs the DML statement
        # over each partition in parallel using separate, internal transactions that
        # commit independently. Partitioned DML transactions do not need to be committed.
        # For transactions that only read, snapshot read-only transactions provide
        # simpler semantics and are almost always faster. In particular, read-only
        # transactions do not take locks, so they do not conflict with read-write
        # transactions. As a consequence of not taking locks, they also do not abort, so
        # retry loops are not needed. Transactions may only read/write data in a single
        # database. They may, however, read/write data in different tables within that
        # database. Locking Read-Write Transactions: Locking transactions may be used to
        # atomically read-modify-write data anywhere in a database. This type of
        # transaction is externally consistent. Clients should attempt to minimize the
        # amount of time a transaction is active. Faster transactions commit with higher
        # probability and cause less contention. Cloud Spanner attempts to keep read
        # locks active as long as the transaction continues to do reads, and the
        # transaction has not been terminated by Commit or Rollback. Long periods of
        # inactivity at the client may cause Cloud Spanner to release a transaction's
        # locks and abort it. Conceptually, a read-write transaction consists of zero or
        # more reads or SQL statements followed by Commit. At any time before Commit,
        # the client can send a Rollback request to abort the transaction. Semantics:
        # Cloud Spanner can commit the transaction if all read locks it acquired are
        # still valid at commit time, and it is able to acquire write locks for all
        # writes. Cloud Spanner can abort the transaction for any reason. If a commit
        # attempt returns `ABORTED`, Cloud Spanner guarantees that the transaction has
        # not modified any user data in Cloud Spanner. Unless the transaction commits,
        # Cloud Spanner makes no guarantees about how long the transaction's locks were
        # held for. It is an error to use Cloud Spanner locks for any sort of mutual
        # exclusion other than between Cloud Spanner transactions themselves. Retrying
        # Aborted Transactions: When a transaction aborts, the application can choose to
        # retry the whole transaction again. To maximize the chances of successfully
        # committing the retry, the client should execute the retry in the same session
        # as the original attempt. The original session's lock priority increases with
        # each consecutive abort, meaning that each attempt has a slightly better chance
        # of success than the previous. Under some circumstances (for example, many
        # transactions attempting to modify the same row(s)), a transaction can abort
        # many times in a short period before successfully committing. Thus, it is not a
        # good idea to cap the number of retries a transaction can attempt; instead, it
        # is better to limit the total amount of time spent retrying. Idle Transactions:
        # A transaction is considered idle if it has no outstanding reads or SQL queries
        # and has not started a read or SQL query within the last 10 seconds. Idle
        # transactions can be aborted by Cloud Spanner so that they don't hold on to
        # locks indefinitely. If an idle transaction is aborted, the commit will fail
        # with error `ABORTED`. If this behavior is undesirable, periodically executing
        # a simple SQL query in the transaction (for example, `SELECT 1`) prevents the
        # transaction from becoming idle. Snapshot Read-Only Transactions: Snapshot read-
        # only transactions provides a simpler method than locking read-write
        # transactions for doing several consistent reads. However, this type of
        # transaction does not support writes. Snapshot transactions do not take locks.
        # Instead, they work by choosing a Cloud Spanner timestamp, then executing all
        # reads at that timestamp. Since they do not acquire locks, they do not block
        # concurrent read-write transactions. Unlike locking read-write transactions,
        # snapshot read-only transactions never abort. They can fail if the chosen read
        # timestamp is garbage collected; however, the default garbage collection policy
        # is generous enough that most applications do not need to worry about this in
        # practice. Snapshot read-only transactions do not need to call Commit or
        # Rollback (and in fact are not permitted to do so). To execute a snapshot
        # transaction, the client specifies a timestamp bound, which tells Cloud Spanner
        # how to choose a read timestamp. The types of timestamp bound are: - Strong (
        # the default). - Bounded staleness. - Exact staleness. If the Cloud Spanner
        # database to be read is geographically distributed, stale read-only
        # transactions can execute more quickly than strong or read-write transaction,
        # because they are able to execute far from the leader replica. Each type of
        # timestamp bound is discussed in detail below. Strong: Strong reads are
        # guaranteed to see the effects of all transactions that have committed before
        # the start of the read. Furthermore, all rows yielded by a single read are
        # consistent with each other -- if any part of the read observes a transaction,
        # all parts of the read see the transaction. Strong reads are not repeatable:
        # two consecutive strong read-only transactions might return inconsistent
        # results if there are concurrent writes. If consistency across reads is
        # required, the reads should be executed within a transaction or at an exact
        # read timestamp. See TransactionOptions.ReadOnly.strong. Exact Staleness: These
        # timestamp bounds execute reads at a user-specified timestamp. Reads at a
        # timestamp are guaranteed to see a consistent prefix of the global transaction
        # history: they observe modifications done by all transactions with a commit
        # timestamp less than or equal to the read timestamp, and observe none of the
        # modifications done by transactions with a larger commit timestamp. They will
        # block until all conflicting transactions that may be assigned commit
        # timestamps <= the read timestamp have finished. The timestamp can either be
        # expressed as an absolute Cloud Spanner commit timestamp or a staleness
        # relative to the current time. These modes do not require a "negotiation phase"
        # to pick a timestamp. As a result, they execute slightly faster than the
        # equivalent boundedly stale concurrency modes. On the other hand, boundedly
        # stale reads usually return fresher results. See TransactionOptions.ReadOnly.
        # read_timestamp and TransactionOptions.ReadOnly.exact_staleness. Bounded
        # Staleness: Bounded staleness modes allow Cloud Spanner to pick the read
        # timestamp, subject to a user-provided staleness bound. Cloud Spanner chooses
        # the newest timestamp within the staleness bound that allows execution of the
        # reads at the closest available replica without blocking. All rows yielded are
        # consistent with each other -- if any part of the read observes a transaction,
        # all parts of the read see the transaction. Boundedly stale reads are not
        # repeatable: two stale reads, even if they use the same staleness bound, can
        # execute at different timestamps and thus return inconsistent results.
        # Boundedly stale reads execute in two phases: the first phase negotiates a
        # timestamp among all replicas needed to serve the read. In the second phase,
        # reads are executed at the negotiated timestamp. As a result of the two phase
        # execution, bounded staleness reads are usually a little slower than comparable
        # exact staleness reads. However, they are typically able to return fresher
        # results, and are more likely to execute at the closest replica. Because the
        # timestamp negotiation requires up-front knowledge of which rows will be read,
        # it can only be used with single-use read-only transactions. See
        # TransactionOptions.ReadOnly.max_staleness and TransactionOptions.ReadOnly.
        # min_read_timestamp. Old Read Timestamps and Garbage Collection: Cloud Spanner
        # continuously garbage collects deleted and overwritten data in the background
        # to reclaim storage space. This process is known as "version GC". By default,
        # version GC reclaims versions after they are one hour old. Because of this,
        # Cloud Spanner cannot perform reads at read timestamps more than one hour in
        # the past. This restriction also applies to in-progress reads and/or SQL
        # queries whose timestamp become too old while executing. Reads and SQL queries
        # with too-old read timestamps fail with the error `FAILED_PRECONDITION`.
        # Partitioned DML Transactions: Partitioned DML transactions are used to execute
        # DML statements with a different execution strategy that provides different,
        # and often better, scalability properties for large, table-wide operations than
        # DML in a ReadWrite transaction. Smaller scoped statements, such as an OLTP
        # workload, should prefer using ReadWrite transactions. Partitioned DML
        # partitions the keyspace and runs the DML statement on each partition in
        # separate, internal transactions. These transactions commit automatically when
        # complete, and run independently from one another. To reduce lock contention,
        # this execution strategy only acquires read locks on rows that match the WHERE
        # clause of the statement. Additionally, the smaller per-partition transactions
        # hold locks for less time. That said, Partitioned DML is not a drop-in
        # replacement for standard DML used in ReadWrite transactions. - The DML
        # statement must be fully-partitionable. Specifically, the statement must be
        # expressible as the union of many statements which each access only a single
        # row of the table. - The statement is not applied atomically to all rows of the
        # table. Rather, the statement is applied atomically to partitions of the table,
        # in independent transactions. Secondary index rows are updated atomically with
        # the base table rows. - Partitioned DML does not guarantee exactly-once
        # execution semantics against a partition. The statement will be applied at
        # least once to each partition. It is strongly recommended that the DML
        # statement should be idempotent to avoid unexpected results. For instance, it
        # is potentially dangerous to run a statement such as `UPDATE table SET column =
        # column + 1` as it could be run multiple times against some rows. - The
        # partitions are committed automatically - there is no support for Commit or
        # Rollback. If the call returns an error, or if the client issuing the
        # ExecuteSql call dies, it is possible that some rows had the statement executed
        # on them successfully. It is also possible that statement was never executed
        # against other rows. - Partitioned DML transactions may only contain the
        # execution of a single DML statement via ExecuteSql or ExecuteStreamingSql. -
        # If any error is encountered during the execution of the partitioned DML
        # operation (for instance, a UNIQUE INDEX violation, division by zero, or a
        # value that cannot be stored due to schema constraints), then the operation is
        # stopped at that point and an error is returned. It is possible that at this
        # point, some partitions have been committed (or even committed multiple times),
        # and other partitions have not been run at all. Given the above, Partitioned
        # DML is good fit for large, database-wide, operations that are idempotent, such
        # as deleting old rows from a very large table.
        # Corresponds to the JSON property `singleUse`
        # @return [Google::Apis::SpannerV1::TransactionOptions]
        attr_accessor :single_use
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @begin = args[:begin] if args.key?(:begin)
          @id = args[:id] if args.key?(:id)
          @single_use = args[:single_use] if args.key?(:single_use)
        end
      end
      
      # `Type` indicates the type of a Cloud Spanner value, as might be stored in a
      # table cell or returned from an SQL query.
      class Type
        include Google::Apis::Core::Hashable
      
        # `Type` indicates the type of a Cloud Spanner value, as might be stored in a
        # table cell or returned from an SQL query.
        # Corresponds to the JSON property `arrayElementType`
        # @return [Google::Apis::SpannerV1::Type]
        attr_accessor :array_element_type
      
        # Required. The TypeCode for this type.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # `StructType` defines the fields of a STRUCT type.
        # Corresponds to the JSON property `structType`
        # @return [Google::Apis::SpannerV1::StructType]
        attr_accessor :struct_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @array_element_type = args[:array_element_type] if args.key?(:array_element_type)
          @code = args[:code] if args.key?(:code)
          @struct_type = args[:struct_type] if args.key?(:struct_type)
        end
      end
      
      # Metadata type for the operation returned by UpdateDatabaseDdl.
      class UpdateDatabaseDdlMetadata
        include Google::Apis::Core::Hashable
      
        # Reports the commit timestamps of all statements that have succeeded so far,
        # where `commit_timestamps[i]` is the commit timestamp for the statement `
        # statements[i]`.
        # Corresponds to the JSON property `commitTimestamps`
        # @return [Array<String>]
        attr_accessor :commit_timestamps
      
        # The database being modified.
        # Corresponds to the JSON property `database`
        # @return [String]
        attr_accessor :database
      
        # The progress of the UpdateDatabaseDdl operations. Currently, only index
        # creation statements will have a continuously updating progress. For non-index
        # creation statements, `progress[i]` will have start time and end time populated
        # with commit timestamp of operation, as well as a progress of 100% once the
        # operation has completed. `progress[i]` is the operation progress for `
        # statements[i]`.
        # Corresponds to the JSON property `progress`
        # @return [Array<Google::Apis::SpannerV1::OperationProgress>]
        attr_accessor :progress
      
        # For an update this list contains all the statements. For an individual
        # statement, this list contains only that statement.
        # Corresponds to the JSON property `statements`
        # @return [Array<String>]
        attr_accessor :statements
      
        # Output only. When true, indicates that the operation is throttled e.g due to
        # resource constraints. When resources become available the operation will
        # resume and this field will be false again.
        # Corresponds to the JSON property `throttled`
        # @return [Boolean]
        attr_accessor :throttled
        alias_method :throttled?, :throttled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commit_timestamps = args[:commit_timestamps] if args.key?(:commit_timestamps)
          @database = args[:database] if args.key?(:database)
          @progress = args[:progress] if args.key?(:progress)
          @statements = args[:statements] if args.key?(:statements)
          @throttled = args[:throttled] if args.key?(:throttled)
        end
      end
      
      # Enqueues the given DDL statements to be applied, in order but not necessarily
      # all at once, to the database schema at some point (or points) in the future.
      # The server checks that the statements are executable (syntactically valid,
      # name tables that exist, etc.) before enqueueing them, but they may still fail
      # upon later execution (e.g., if a statement from another batch of statements is
      # applied first and it conflicts in some way, or if there is some data-related
      # problem like a `NULL` value in a column to which `NOT NULL` would be added).
      # If a statement fails, all subsequent statements in the batch are automatically
      # cancelled. Each batch of statements is assigned a name which can be used with
      # the Operations API to monitor progress. See the operation_id field for more
      # details.
      class UpdateDatabaseDdlRequest
        include Google::Apis::Core::Hashable
      
        # If empty, the new update request is assigned an automatically-generated
        # operation ID. Otherwise, `operation_id` is used to construct the name of the
        # resulting Operation. Specifying an explicit operation ID simplifies
        # determining whether the statements were executed in the event that the
        # UpdateDatabaseDdl call is replayed, or the return value is otherwise lost: the
        # database and `operation_id` fields can be combined to form the name of the
        # resulting longrunning.Operation: `/operations/`. `operation_id` should be
        # unique within the database, and must be a valid identifier: `a-z*`. Note that
        # automatically-generated operation IDs always begin with an underscore. If the
        # named operation already exists, UpdateDatabaseDdl returns `ALREADY_EXISTS`.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # Required. DDL statements to be applied to the database.
        # Corresponds to the JSON property `statements`
        # @return [Array<String>]
        attr_accessor :statements
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @statements = args[:statements] if args.key?(:statements)
        end
      end
      
      # Metadata type for the operation returned by UpdateInstance.
      class UpdateInstanceMetadata
        include Google::Apis::Core::Hashable
      
        # The time at which this operation was cancelled. If set, this operation is in
        # the process of undoing itself (which is guaranteed to succeed) and cannot be
        # cancelled again.
        # Corresponds to the JSON property `cancelTime`
        # @return [String]
        attr_accessor :cancel_time
      
        # The time at which this operation failed or was completed successfully.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # An isolated set of Cloud Spanner resources on which databases can be hosted.
        # Corresponds to the JSON property `instance`
        # @return [Google::Apis::SpannerV1::Instance]
        attr_accessor :instance
      
        # The time at which UpdateInstance request was received.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cancel_time = args[:cancel_time] if args.key?(:cancel_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @instance = args[:instance] if args.key?(:instance)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # The request for UpdateInstance.
      class UpdateInstanceRequest
        include Google::Apis::Core::Hashable
      
        # Required. A mask specifying which fields in Instance should be updated. The
        # field mask must always be specified; this prevents any future fields in
        # Instance from being erased accidentally by clients that do not know about them.
        # Corresponds to the JSON property `fieldMask`
        # @return [String]
        attr_accessor :field_mask
      
        # An isolated set of Cloud Spanner resources on which databases can be hosted.
        # Corresponds to the JSON property `instance`
        # @return [Google::Apis::SpannerV1::Instance]
        attr_accessor :instance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_mask = args[:field_mask] if args.key?(:field_mask)
          @instance = args[:instance] if args.key?(:instance)
        end
      end
      
      # 
      class VisualizationData
        include Google::Apis::Core::Hashable
      
        # The token signifying the end of a data_source.
        # Corresponds to the JSON property `dataSourceEndToken`
        # @return [String]
        attr_accessor :data_source_end_token
      
        # The token delimiting a datasource name from the rest of a key in a data_source.
        # Corresponds to the JSON property `dataSourceSeparatorToken`
        # @return [String]
        attr_accessor :data_source_separator_token
      
        # The list of messages (info, alerts, ...)
        # Corresponds to the JSON property `diagnosticMessages`
        # @return [Array<Google::Apis::SpannerV1::DiagnosticMessage>]
        attr_accessor :diagnostic_messages
      
        # We discretize the entire keyspace into buckets. Assuming each bucket has an
        # inclusive keyrange and covers keys from k(i) ... k(n). In this case k(n) would
        # be an end key for a given range. end_key_string is the collection of all such
        # end keys
        # Corresponds to the JSON property `endKeyStrings`
        # @return [Array<String>]
        attr_accessor :end_key_strings
      
        # Whether this scan contains PII.
        # Corresponds to the JSON property `hasPii`
        # @return [Boolean]
        attr_accessor :has_pii
        alias_method :has_pii?, :has_pii
      
        # Keys of key ranges that contribute significantly to a given metric Can be
        # thought of as heavy hitters.
        # Corresponds to the JSON property `indexedKeys`
        # @return [Array<String>]
        attr_accessor :indexed_keys
      
        # The token delimiting the key prefixes.
        # Corresponds to the JSON property `keySeparator`
        # @return [String]
        attr_accessor :key_separator
      
        # The unit for the key: e.g. 'key' or 'chunk'.
        # Corresponds to the JSON property `keyUnit`
        # @return [String]
        attr_accessor :key_unit
      
        # The list of data objects for each metric.
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::SpannerV1::Metric>]
        attr_accessor :metrics
      
        # The list of extracted key prefix nodes used in the key prefix hierarchy.
        # Corresponds to the JSON property `prefixNodes`
        # @return [Array<Google::Apis::SpannerV1::PrefixNode>]
        attr_accessor :prefix_nodes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_source_end_token = args[:data_source_end_token] if args.key?(:data_source_end_token)
          @data_source_separator_token = args[:data_source_separator_token] if args.key?(:data_source_separator_token)
          @diagnostic_messages = args[:diagnostic_messages] if args.key?(:diagnostic_messages)
          @end_key_strings = args[:end_key_strings] if args.key?(:end_key_strings)
          @has_pii = args[:has_pii] if args.key?(:has_pii)
          @indexed_keys = args[:indexed_keys] if args.key?(:indexed_keys)
          @key_separator = args[:key_separator] if args.key?(:key_separator)
          @key_unit = args[:key_unit] if args.key?(:key_unit)
          @metrics = args[:metrics] if args.key?(:metrics)
          @prefix_nodes = args[:prefix_nodes] if args.key?(:prefix_nodes)
        end
      end
      
      # Arguments to insert, update, insert_or_update, and replace operations.
      class Write
        include Google::Apis::Core::Hashable
      
        # The names of the columns in table to be written. The list of columns must
        # contain enough columns to allow Cloud Spanner to derive values for all primary
        # key columns in the row(s) to be modified.
        # Corresponds to the JSON property `columns`
        # @return [Array<String>]
        attr_accessor :columns
      
        # Required. The table whose rows will be written.
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        # The values to be written. `values` can contain more than one list of values.
        # If it does, then multiple rows are written, one for each entry in `values`.
        # Each list in `values` must have exactly as many entries as there are entries
        # in columns above. Sending multiple lists is equivalent to sending multiple `
        # Mutation`s, each containing one `values` entry and repeating table and columns.
        # Individual values in each list are encoded as described here.
        # Corresponds to the JSON property `values`
        # @return [Array<Array<Object>>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @columns = args[:columns] if args.key?(:columns)
          @table = args[:table] if args.key?(:table)
          @values = args[:values] if args.key?(:values)
        end
      end
    end
  end
end
