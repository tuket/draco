const std = @import("std");

const CStr = []const u8;

const DracoFolder = struct {
    path: CStr,
    srcs: []const CStr,
};

const srcs = [_]CStr{
    "attributes/attribute_octahedron_transform.cc",
    "attributes/attribute_octahedron_transform.h",
    "attributes/attribute_quantization_transform.cc",
    "attributes/attribute_quantization_transform.h",
    "attributes/attribute_transform.cc",
    "attributes/attribute_transform.h",
    "attributes/attribute_transform_data.h",
    "attributes/attribute_transform_type.h",
    "attributes/geometry_attribute.cc",
    "attributes/geometry_attribute.h",
    "attributes/geometry_indices.h",
    "attributes/point_attribute.cc",
    "attributes/point_attribute.h",

    "compression/attributes/attributes_decoder.cc",
    "compression/attributes/attributes_decoder.h",
    "compression/attributes/attributes_decoder_interface.h",
    "compression/attributes/kd_tree_attributes_decoder.cc",
    "compression/attributes/kd_tree_attributes_decoder.h",
    "compression/attributes/kd_tree_attributes_shared.h",
    "compression/attributes/mesh_attribute_indices_encoding_data.h",
    "compression/attributes/normal_compression_utils.h",
    "compression/attributes/point_d_vector.h",
    "compression/attributes/sequential_attribute_decoder.cc",
    "compression/attributes/sequential_attribute_decoder.h",
    "compression/attributes/sequential_attribute_decoders_controller.cc",
    "compression/attributes/sequential_attribute_decoders_controller.h",
    "compression/attributes/sequential_integer_attribute_decoder.cc",
    "compression/attributes/sequential_integer_attribute_decoder.h",
    "compression/attributes/sequential_normal_attribute_decoder.cc",
    "compression/attributes/sequential_normal_attribute_decoder.h",
    "compression/attributes/sequential_quantization_attribute_decoder.cc",
    "compression/attributes/sequential_quantization_attribute_decoder.h",

    "compression/attributes/prediction_schemes/mesh_prediction_scheme_constrained_multi_parallelogram_decoder.h",
    "compression/attributes/prediction_schemes/mesh_prediction_scheme_constrained_multi_parallelogram_shared.h",
    "compression/attributes/prediction_schemes/mesh_prediction_scheme_data.h",
    "compression/attributes/prediction_schemes/mesh_prediction_scheme_decoder.h",
    "compression/attributes/prediction_schemes/mesh_prediction_scheme_geometric_normal_decoder.h",
    "compression/attributes/prediction_schemes/mesh_prediction_scheme_geometric_normal_predictor_area.h",
    "compression/attributes/prediction_schemes/mesh_prediction_scheme_geometric_normal_predictor_base.h",
    "compression/attributes/prediction_schemes/mesh_prediction_scheme_multi_parallelogram_decoder.h",
    "compression/attributes/prediction_schemes/mesh_prediction_scheme_parallelogram_encoder.h",
    "compression/attributes/prediction_schemes/mesh_prediction_scheme_parallelogram_shared.h",
    "compression/attributes/prediction_schemes/mesh_prediction_scheme_tex_coords_decoder.h",
    "compression/attributes/prediction_schemes/mesh_prediction_scheme_tex_coords_portable_decoder.h",
    "compression/attributes/prediction_schemes/mesh_prediction_scheme_tex_coords_portable_predictor.h",
    "compression/attributes/prediction_schemes/prediction_scheme_decoder.h",
    "compression/attributes/prediction_schemes/prediction_scheme_decoder_factory.h",
    "compression/attributes/prediction_schemes/prediction_scheme_decoder_interface.h",
    "compression/attributes/prediction_schemes/prediction_scheme_decoding_transform.h",
    "compression/attributes/prediction_schemes/prediction_scheme_delta_decoder.h",
    "compression/attributes/prediction_schemes/prediction_scheme_factory.h",
    "compression/attributes/prediction_schemes/prediction_scheme_interface.h",
    "compression/attributes/prediction_schemes/prediction_scheme_normal_octahedron_canonicalized_decoding_transform.h",
    "compression/attributes/prediction_schemes/prediction_scheme_normal_octahedron_canonicalized_transform_base.h",
    "compression/attributes/prediction_schemes/prediction_scheme_normal_octahedron_decoding_transform.h",
    "compression/attributes/prediction_schemes/prediction_scheme_normal_octahedron_transform_base.h",
    "compression/attributes/prediction_schemes/prediction_scheme_wrap_decoding_transform.h",
    "compression/attributes/prediction_schemes/prediction_scheme_wrap_transform_base.h",

    "compression/bit_coders/adaptive_rans_bit_coding_shared.h",
    "compression/bit_coders/adaptive_rans_bit_decoder.cc",
    "compression/bit_coders/adaptive_rans_bit_decoder.h",
    "compression/bit_coders/adaptive_rans_bit_encoder.cc",
    "compression/bit_coders/adaptive_rans_bit_encoder.h",
    "compression/bit_coders/direct_bit_decoder.cc",
    "compression/bit_coders/direct_bit_decoder.h",
    "compression/bit_coders/direct_bit_encoder.cc",
    "compression/bit_coders/direct_bit_encoder.h",
    "compression/bit_coders/folded_integer_bit_decoder.h",
    "compression/bit_coders/folded_integer_bit_encoder.h",
    "compression/bit_coders/rans_bit_decoder.cc",
    "compression/bit_coders/rans_bit_decoder.h",
    "compression/bit_coders/rans_bit_encoder.cc",
    "compression/bit_coders/rans_bit_encoder.h",
    "compression/bit_coders/symbol_bit_decoder.cc",
    "compression/bit_coders/symbol_bit_decoder.h",
    "compression/bit_coders/symbol_bit_encoder.cc",
    "compression/bit_coders/symbol_bit_encoder.h",

    "compression/decode.cc",
    "compression/decode.h",

    "compression/entropy/ans.h",
    "compression/entropy/rans_symbol_coding.h",
    "compression/entropy/rans_symbol_decoder.h",
    "compression/entropy/rans_symbol_encoder.h",
    "compression/entropy/shannon_entropy.cc",
    "compression/entropy/shannon_entropy.h",
    "compression/entropy/symbol_decoding.cc",
    "compression/entropy/symbol_decoding.h",
    "compression/entropy/symbol_encoding.cc",
    "compression/entropy/symbol_encoding.h",

    "compression/mesh/traverser/depth_first_traverser.h",
    "compression/mesh/traverser/max_prediction_degree_traverser.h",
    "compression/mesh/traverser/mesh_attribute_indices_encoding_observer.h",
    "compression/mesh/traverser/mesh_traversal_sequencer.h",
    "compression/mesh/traverser/traverser_base.h",

    "compression/mesh/mesh_decoder.cc",
    "compression/mesh/mesh_decoder.h",
    "compression/mesh/mesh_edgebreaker_decoder.cc",
    "compression/mesh/mesh_edgebreaker_decoder.h",
    "compression/mesh/mesh_edgebreaker_decoder_impl.cc",
    "compression/mesh/mesh_edgebreaker_decoder_impl.h",
    "compression/mesh/mesh_edgebreaker_decoder_impl_interface.h",
    "compression/mesh/mesh_edgebreaker_shared.h",
    "compression/mesh/mesh_edgebreaker_traversal_decoder.h",
    "compression/mesh/mesh_edgebreaker_traversal_predictive_decoder.h",
    "compression/mesh/mesh_edgebreaker_traversal_valence_decoder.h",
    "compression/mesh/mesh_sequential_decoder.cc",
    "compression/mesh/mesh_sequential_decoder.h",

    "compression/draco_compression_options.cc",
    "compression/draco_compression_options.h",

    "compression/point_cloud/point_cloud_decoder.cc",
    "compression/point_cloud/point_cloud_decoder.h",
    "compression/point_cloud/point_cloud_kd_tree_decoder.cc",
    "compression/point_cloud/point_cloud_kd_tree_decoder.h",
    "compression/point_cloud/point_cloud_sequential_decoder.cc",
    "compression/point_cloud/point_cloud_sequential_decoder.h",

    "core/bit_utils.cc",
    "core/bit_utils.h",
    "core/bounding_box.cc",
    "core/bounding_box.h",
    "core/constants.h",
    "core/cycle_timer.cc",
    "core/cycle_timer.h",
    "core/data_buffer.cc",
    "core/data_buffer.h",
    "core/decoder_buffer.cc",
    "core/decoder_buffer.h",
    "core/divide.cc",
    "core/divide.h",
    "core/draco_index_type.h",
    "core/draco_index_type_vector.h",
    "core/draco_types.cc",
    "core/draco_types.h",
    "core/draco_version.h",
    "core/encoder_buffer.cc",
    "core/encoder_buffer.h",
    "core/hash_utils.cc",
    "core/hash_utils.h",
    "core/macros.h",
    "core/math_utils.h",
    "core/options.cc",
    "core/options.h",
    "core/quantization_utils.cc",
    "core/quantization_utils.h",
    "core/status.h",
    "core/status_or.h",
    "core/varint_decoding.h",
    "core/varint_encoding.h",
    "core/vector_d.h",

    "compression/config/compression_shared.h",
    "compression/config/decoder_options.h",
    "compression/config/draco_options.h",

    //${draco_js_dec_sources}

    "mesh/corner_table.cc",
    "mesh/corner_table.h",
    "mesh/corner_table_iterators.h",
    "mesh/mesh.cc",
    "mesh/mesh.h",
    "mesh/mesh_are_equivalent.cc",
    "mesh/mesh_are_equivalent.h",
    "mesh/mesh_attribute_corner_table.cc",
    "mesh/mesh_attribute_corner_table.h",
    "mesh/mesh_cleanup.cc",
    "mesh/mesh_cleanup.h",
    "mesh/mesh_features.cc",
    "mesh/mesh_features.h",
    "mesh/mesh_indices.h",
    "mesh/mesh_misc_functions.cc",
    "mesh/mesh_misc_functions.h",
    "mesh/mesh_stripifier.cc",
    "mesh/mesh_stripifier.h",
    "mesh/triangle_soup_mesh_builder.cc",
    "mesh/triangle_soup_mesh_builder.h",
    "mesh/valence_cache.h",

    "metadata/metadata_decoder.cc",
    "metadata/metadata_decoder.h",

    "metadata/geometry_metadata.cc",
    "metadata/geometry_metadata.h",
    "metadata/metadata.cc",
    "metadata/metadata.h",
    "metadata/property_attribute.cc",
    "metadata/property_attribute.h",
    "metadata/property_table.cc",
    "metadata/property_table.h",
    "metadata/structural_metadata.cc",
    "metadata/structural_metadata.h",
    "metadata/structural_metadata_schema.cc",
    "metadata/structural_metadata_schema.h",

    "point_cloud/point_cloud.cc",
    "point_cloud/point_cloud.h",
    "point_cloud/point_cloud_builder.cc",
    "point_cloud/point_cloud_builder.h",

    "compression/point_cloud/algorithms/dynamic_integer_points_kd_tree_decoder.cc",
    "compression/point_cloud/algorithms/dynamic_integer_points_kd_tree_decoder.h",
    "compression/point_cloud/algorithms/float_points_tree_decoder.cc",
    "compression/point_cloud/algorithms/float_points_tree_decoder.h",
};

const dracoFeaturesCSrc =
    \\ #pragma once
    \\ #define DRACO_TINY_DECODE_SHARED_LIB
    \\ #define DRACO_MESH_COMPRESSION_SUPPORTED
    \\ #define DRACO_POINT_CLOUD_COMPRESSION_SUPPORTED
;

fn endsWithAny(str: CStr, endings: []const CStr) bool {
    for (endings) |ending| {
        if (std.mem.endsWith(u8, str, ending)) {
            return true;
        }
    }
    return false;
}

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const dracoGenerateSrcs = b.addWriteFiles();
    _ = dracoGenerateSrcs.add("draco/draco_features.h", dracoFeaturesCSrc);

    const lib = b.addStaticLibrary(.{
        .name = "draco_static",
        .target = target,
        .optimize = optimize,
        .strip = false,
        .pic = true,
    });

    lib.step.dependOn(&dracoGenerateSrcs.step);
    lib.addIncludePath(dracoGenerateSrcs.getDirectory());
    lib.addIncludePath(.{ .path = "src" });

    for (srcs) |src| {
        var buffer: [256]u8 = undefined;
        const srcPath = std.fmt.bufPrint(&buffer, "src/draco/{s}", .{src}) catch unreachable;
        const isC = endsWithAny(srcPath, &.{".c"});
        const isCpp = endsWithAny(srcPath, &.{ ".cpp", ".cc" });
        if (isC or isCpp) {
            lib.addCSourceFile(.{
                .file = .{ .path = srcPath },
                .flags = &.{if (isC) "-std=c99" else "-std=c++11"},
            });
        }
    }

    lib.linkLibC();
    lib.linkLibCpp();

    const sharedLib = b.addSharedLibrary(.{
        .name = "draco_shared",
        .target = target,
        .optimize = optimize,
        .strip = false,
    });
    sharedLib.linkLibrary(lib);
    sharedLib.addIncludePath(dracoGenerateSrcs.getDirectory());
    sharedLib.addIncludePath(.{ .path = "src" });

    sharedLib.addCSourceFile(.{
        .file = .{ .path = "src/draco/shared_lib/draco_shared_lib.cc" },
        .flags = &.{"-std=c++11"},
    });
    sharedLib.addCSourceFile(.{
        .file = .{ .path = "src/draco/root.c" },
        .flags = &.{"-std=c99"},
    });

    sharedLib.linkLibC();
    sharedLib.linkLibCpp();

    b.installArtifact(lib);
    b.installArtifact(sharedLib);
}
