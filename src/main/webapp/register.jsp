
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-5">

            <div class="card shadow mt-5">
                <div class="card-body p-4">

                    <h3 class="text-center mb-4">Register</h3>

                    <form action="register" method="post">

                        <div class="mb-3">
                            <label class="form-label">Name</label>
                            <input type="text" name="name" class="form-control" placeholder="Enter your name" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Email</label>
                            <input type="email" name="email" class="form-control" placeholder="Enter your email" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Password</label>
                            <input type="password" name="password" class="form-control" placeholder="Enter password" required>
                        </div>

                        <button type="submit" class="btn btn-primary w-100">
                            Register
                        </button>

                    </form>

                    <!-- Message -->
                    <%
                    String msg = (String) request.getAttribute("msg");
                    if (msg != null) {
                    %>
                        <div class="alert alert-success mt-3 text-center">
                            <%= msg %>
                        </div>
                    <% } %>

                </div>
            </div>

        </div>
    </div>
</div>