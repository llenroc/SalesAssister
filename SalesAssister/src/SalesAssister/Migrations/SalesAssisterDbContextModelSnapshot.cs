using System;
using Microsoft.Data.Entity;
using Microsoft.Data.Entity.Infrastructure;
using Microsoft.Data.Entity.Metadata;
using Microsoft.Data.Entity.Migrations;
using SalesAssister.Models;

namespace SalesAssister.Migrations
{
    [DbContext(typeof(SalesAssisterDbContext))]
    partial class SalesAssisterDbContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
            modelBuilder
                .HasAnnotation("ProductVersion", "7.0.0-rc1-16348")
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("SalesAssister.Models.Client", b =>
                {
                    b.Property<int>("ClientId")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Email");

                    b.Property<string>("Name");

                    b.Property<string>("Phone");

                    b.Property<int>("SalesPersonId");

                    b.HasKey("ClientId");

                    b.HasAnnotation("Relational:TableName", "Clients");
                });

            modelBuilder.Entity("SalesAssister.Models.Contact", b =>
                {
                    b.Property<int>("ContactId")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("ClientId");

                    b.Property<string>("Notes");

                    b.Property<int>("SalesPersonId");

                    b.HasKey("ContactId");

                    b.HasAnnotation("Relational:TableName", "Contacts");
                });

            modelBuilder.Entity("SalesAssister.Models.SalesPerson", b =>
                {
                    b.Property<int>("SalesPersonId")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Company");

                    b.Property<string>("Name");

                    b.HasKey("SalesPersonId");

                    b.HasAnnotation("Relational:TableName", "SalesPersons");
                });

            modelBuilder.Entity("SalesAssister.Models.Client", b =>
                {
                    b.HasOne("SalesAssister.Models.SalesPerson")
                        .WithMany()
                        .HasForeignKey("SalesPersonId");
                });

            modelBuilder.Entity("SalesAssister.Models.Contact", b =>
                {
                    b.HasOne("SalesAssister.Models.Client")
                        .WithMany()
                        .HasForeignKey("ClientId");

                    b.HasOne("SalesAssister.Models.SalesPerson")
                        .WithMany()
                        .HasForeignKey("SalesPersonId");
                });
        }
    }
}
