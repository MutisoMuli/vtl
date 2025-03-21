{include file="sections/header.tpl"}

<head>
    <title>Connected Clients</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            $.getJSON('get_clients.php', function(data) {
                var table = '<table><tr><th>Username</th><th>IP Address</th></tr>';
                $.each(data, function(index, client) {
                    table += '<tr><td>' + client.user + '</td><td>' + client.address + '</td></tr>';
                });
                table += '</table>';
                $('#clients').html(table);
            });
        });
    </script>
</head>
<body>
    <div id="clients"></div>
</body>
{include file="sections/footer.tpl"}