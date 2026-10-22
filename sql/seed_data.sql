
-- Sample data for the multi-tenant SaaS database

INSERT INTO tenants (tenant_name, tenant_slug) VALUES
('NovaTech Solutions', 'novatech'),
('PixelWorks Studio', 'pixelworks');

INSERT INTO users (tenant_id, email, full_name) VALUES
(1, 'john@novatech.example', 'John Mathew'),
(1, 'maya@novatech.example', 'Maya Thomas'),
(2, 'arun@pixelworks.example', 'Arun Kumar'),
(2, 'sara@pixelworks.example', 'Sara Joseph');

INSERT INTO user_profiles (user_id, phone, job_title, timezone) VALUES
(1, '+91-9000000001', 'Project Manager', 'Asia/Kolkata'),
(2, '+91-9000000002', 'Developer', 'Asia/Kolkata'),
(3, '+91-9000000003', 'Designer', 'Asia/Kolkata'),
(4, '+91-9000000004', 'QA Engineer', 'Asia/Kolkata');

INSERT INTO projects (tenant_id, project_name, description, created_by) VALUES
(1, 'Customer Portal', 'Build a customer self-service portal', 1),
(1, 'Analytics Dashboard', 'Create business analytics dashboards', 2),
(2, 'Brand Refresh', 'Refresh the company brand identity', 3);

INSERT INTO tasks (tenant_id, project_id, title, status, priority, due_date) VALUES
(1, 1, 'Design login page', 'IN_PROGRESS', 'HIGH', '2026-11-10'),
(1, 1, 'Implement authentication', 'TODO', 'HIGH', '2026-11-15'),
(1, 2, 'Create sales charts', 'TODO', 'MEDIUM', '2026-11-20'),
(2, 3, 'Prepare logo concepts', 'DONE', 'MEDIUM', '2026-11-05'),
(2, 3, 'Review brand guidelines', 'TODO', 'LOW', '2026-11-25');

INSERT INTO roles (role_name, description) VALUES
('Admin', 'Manage tenant settings and users'),
('Manager', 'Manage projects and tasks'),
('Member', 'Work on assigned tasks');

-- Many-to-many relationship between users and roles
INSERT INTO user_roles (user_id, role_id) VALUES
(1, 1),
(2, 3),
(3, 2),
(4, 3);
