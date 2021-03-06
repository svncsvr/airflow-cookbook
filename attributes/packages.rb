# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#     http//www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Core packages - built to match the Setup.py file in the Aiflow repository.
default['airflow']['packages'] =
  {
    async: [{ name: 'greenlet', version: '>=0.4.9' },
            { name: 'eventlet', version: '>=0.9.7' },
            { name: 'gevent', version: '>=0.13' }],
    azure: [{ name: 'azure_blob_storage', version: '>=0.34.0'}],
    celery: [{ name: 'celery', version: '>=4.1.0, <4.2.0' }],
    cgroups: [{ name: 'cgroupspy', version: '>=0.1.4' }],
    crypto: [{ name: 'cryptography', version: '>=0.9.3' }],
    dask: [{ name: 'distributed', version: '1.15.2, <2' }],
    databricks: [{name: 'requests', version: '>=2.5.1, <3'}],
    datadog: [{ name: 'datadog', version: '>=0.14.0' }],
    doc: [{ name: 'sphinx', version: '>=1.2.3' },
          { name: 'sphinx-argparse', version: '>=0.1.13' },
          { name: 'sphinx-rtd-theme', version: '>=0.1.6' },
          { name: 'Sphinx-PyPI-upload', version: '>=0.2.1' }],
    docker: [{ name: 'docker-py', version: '>=1.6.0' }],
    druid: [{ name: 'druid', version: '>=0.4.1' }],
    emr: [{ name: 'boto3', version: '>=1.0.0' }],
    gcp_api: [{ name: 'httplib2', version: '' },
              { name: 'google-api-python-client', version: '>=1.5.0, <1.6.0' },
              { name: 'oauth2client', version: '>=2.0.2, <2.1.0' },
              { name: 'pandas-gbq', version: '' },
              { name: 'google-cloud-dataflow', version: '' },
              { name: 'PyOpenSSL', version: '' }],
    hdfs: [{ name: 'snakebite', version: '>=2.7.8' }],
    webhdfs: [{ name: 'hdfs[dataframe,avro,kerberos]', version: '>=2.0.4' }],
    hive: [{ name: 'hive-thrift-py', version: '>=0.0.1' },
           { name: 'pyhive', version: '>=0.1.3' },
           { name: 'impyla', version: '>=0.13.3' },
           { name: 'unicodecsv', version: '>=0.14.1' }],
    jira: [{ name: 'JIRA', version: '>1.0.7'}],
    jdbc: [{ name: 'jaydebeapi', version: '>=1.1.1' }],
    mssql: [{ name: 'pymssql', version: '>=2.1.1' },
            { name: 'unicodecsv', version: '>=0.14.1' }],
    mysql: [{ name: 'mysqlclient', version: '>=1.3.6' }],
    rabbitmq: [{ name: 'librabbitmq', version: '>=1.6.1' }],
    postgres: [{ name: 'psycopg2_binary', version: '>=2.7.4' }],
    s3: [{ name: 'boto', version: '>=2.36.0' },
         { name: 'filechunkio', version: '>=1.6' }],
    salesforce: [{name: 'simple-salesforce', version: '>=0.72'}],
    samba: [{ name: 'pysmbclient', version: '>=0.1.3' }],
    slack: [{ name: 'slackclient', version: '>=1.0.0' }],
    ssh: [{ name: 'paramiko', version: '>=2.1.1' }],
    statsd: [{ name: 'statsd', version: '>=3.0.1, <4.0' }],
    vertica: [{ name: 'vertica-python', version: '>=0.5.1' }],
    ldap: [{ name: 'ldap3', version: '>=0.9.9.1' }],
    kerberos: [{ name: 'pykerberos', version: '>=1.1.8' },
               { name: 'requests_kerberos', version: '>=0.10.0' },
               { name: 'thrift_sasl', version: '>=0.2.0' },
               { name: 'kerberos', version: '>=1.2.5' },
               { name: 'snakebite[kerberos]', version: '>=2.7.8' }],
    password: [{ name: 'bcrypt', version: '>=2.0.0' },
               { name: 'flask-bcrypt', version: '>=0.7.1' }],
    github_enterprise: [{ name: 'Flask-OAuthlib', version: '>=0.9.1' }],
    qds: [{ name: 'qds-sdk', version: '>=1.9.6' }],
    redis: [{ name: 'redis', version: '>=2.10.5'}],
    cloudant: [{ name: 'cloudant', version: '>=0.5.9,<2.0' }],
    devel: [{ name: 'click', version: '' },
            { name: 'freezegun', version: '' },
            { name: 'jira', version: '' },
            { name: 'lxml', version: '>=3.3.4' },
            { name: 'mock', version: '' },
            { name: 'moto', version: '==1.1.19' },
            { name: 'nose', version: '' },
            { name: 'nose-ignore-docstring', version: '==0.2' },
            { name: 'nose-timer', version: '' },
            { name: 'parameterized', version: '' },
            { name: 'rednose', version: '' },
            { name: 'paramiko', version: '' },
            { name: 'requests_mock', version: '' }],
    winrm: [{ name: 'pywinrm', version: '>=0.3.0, <0.3.1'}]
  }

# OS packages needed for the above python packages.
default['airflow']['dependencies'] =
  {
    ubuntu:
    {
      default: [{ name: 'python-dev', version: '' },
                { name: 'build-essential', version: '' },
                { name: 'libssl-dev', version: '' }],
      mysql: [{ name: 'mysql-client', version: '' },
              { name: 'libmysqlclient-dev', version: '' }],
      postgres: [{ name: 'postgresql-client', version: '' },
                 { name: 'libpq-dev', version: '' }],
      mssql: [{ name: 'freetds-dev', version: '' }],
      crypto: [{ name: 'libffi-dev', version: '' }],
      password: [{ name: 'libffi-dev', version: '' }],
      gcp_api: [{ name: 'libffi-dev', version: '' }],
      ldap: [{ name: 'libldap2-dev', version: '' }],
      hive: [{ name: 'libsasl2-dev', version: '' }],
      devel_hadoop: [{ name: 'libkrb5-dev', version: '' }],
      webhdfs: [{ name: 'libkrb5-dev', version: '' }],
      kerberos: [{ name: 'libsasl2-dev', version: '' }]
    },
    centos:
    {
      default: [{ name: 'gcc', version: '' },
                { name: 'gcc-c++', version: '' },
                { name: 'epel-release', version: '' },
                { name: 'libjpeg-devel', version: '' },
                { name: 'zlib-devel', version: '' },
                { name: 'python-devel', version: '' }],
      mysql: [{ name: 'mariadb', version: '' },
              { name: 'mariadb-devel', version: '' }],
      postgres: [{ name: 'postgresql', version: '' },
                 { name: 'postgresql-devel', version: '' }],
      mssql: [{ name: 'freetds-devel', version: '' }],
      crypto: [{ name: 'libffi-devel', version: '' }],
      password: [{ name: 'libffi-devel', version: '' }],
      gcp_api: [{ name: 'libffi-devel', version: '' }],
      ldap: [{ name: 'cyrus-sasl-devel', version: '' }],
      hive: [{ name: 'cyrus-sasl-devel', version: '' }],
      devel_hadoop: [{ name: 'cyrus-sasl-devel', version: '' }],
      webhdfs: [{ name: 'cyrus-sasl-devel', version: '' }],
      kerberos: [{ name: 'cyrus-sasl-devel', version: '' }]
    }
  }
